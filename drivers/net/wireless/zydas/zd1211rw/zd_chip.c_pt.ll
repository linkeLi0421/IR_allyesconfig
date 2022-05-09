; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/zydas/zd1211rw/zd_chip.c_pt.bc'
source_filename = "../drivers/net/wireless/zydas/zd1211rw/zd_chip.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.zd_ioreq32 = type { i16, i32 }
%struct.zd_ioreq16 = type { i16, i16 }
%struct.zd_chip = type { %struct.zd_usb, %struct.zd_rf, %struct.mutex, i16, [14 x i8], [14 x i8], [3 x [14 x i8]], i16, i16 }
%struct.zd_usb = type { %struct.zd_usb_interrupt, %struct.zd_usb_rx, %struct.zd_usb_tx, ptr, %struct.usb_anchor, ptr, i32, [64 x i8], i8 }
%struct.zd_usb_interrupt = type { %struct.read_regs_int, %struct.spinlock, ptr, ptr, i32, i32, %struct.atomic_t, i8 }
%struct.read_regs_int = type { %struct.completion, ptr, i32, [64 x i8], i32, i16 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.zd_usb_rx = type { %struct.spinlock, %struct.mutex, %struct.delayed_work, %struct.tasklet_struct, [9600 x i8], i32, i32, ptr, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.99, i32 }
%union.anon.99 = type { ptr }
%struct.zd_usb_tx = type { %struct.atomic_t, %struct.spinlock, %struct.delayed_work, %struct.sk_buff_head, %struct.usb_anchor, i32, i8 }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.zd_rf = type { i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.zd_mac = type { %struct.zd_chip, %struct.spinlock, %struct.spinlock, ptr, ptr, %struct.housekeeping, %struct.beacon, %struct.work_struct, %struct.work_struct, %struct.zd_mc_hash, [64 x i8], i8, i8, i8, i32, i32, i32, %struct.sk_buff_head, [14 x %struct.ieee80211_channel], [12 x %struct.ieee80211_rate], %struct.ieee80211_supported_band, i8, i32 }
%struct.housekeeping = type { %struct.delayed_work }
%struct.beacon = type { %struct.delayed_work, ptr, i32, i16, i8 }
%struct.zd_mc_hash = type { i32, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.129, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.anon.129 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.125, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.possible_net_t = type { ptr }
%struct.anon.125 = type { i64, i64, i8 }
%struct.rx_status = type { i8, i8, i8, i8, i8 }

@zd_chip_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&chip->mutex\00", [19 x i8] zeroinitializer }, align 32
@zd_chip_clear.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 8, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"zd1211rw\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"zd_chip_clear\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/wireless/zydas/zd1211rw/zd_chip.c\00", [50 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s:%d ASSERT %s VIOLATED!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"!mutex_is_locked(&chip->mutex)\00", [33 x i8] zeroinitializer }, align 32
@zd_ioread32v_locked._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 119, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s() error: %s. Error number %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"zd_ioread32v_locked\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@zd_ioread32v_locked._entry_ptr = internal global ptr @zd_ioread32v_locked._entry, section ".printk_index", align 4
@zd_iowrite16a_locked.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str.3, ptr @.str.4, i8 0, i8 47, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"zd_iowrite16a_locked\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mutex_is_locked(&chip->mutex)\00", [34 x i8] zeroinitializer }, align 32
@zd_iowrite16a_locked._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.3, i32 210, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s() error zd_usb_iowrite16v. Error number %d\0A\00", [49 x i8] zeroinitializer }, align 32
@zd_iowrite16a_locked._entry_ptr = internal global ptr @zd_iowrite16a_locked._entry, section ".printk_index", align 4
@zd_iowrite32a_locked._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 247, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s() error _%s. Error number %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"zd_iowrite32a_locked\00", [43 x i8] zeroinitializer }, align 32
@zd_iowrite32a_locked._entry_ptr = internal global ptr @zd_iowrite32a_locked._entry, section ".printk_index", align 4
@zd_write_mac_addr.reqs = internal constant { [2 x %struct.zd_ioreq32], [16 x i8] } { [2 x %struct.zd_ioreq32] [%struct.zd_ioreq32 { i16 -27120, i32 0 }, %struct.zd_ioreq32 { i16 -27116, i32 0 }], [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mac\00", [28 x i8] zeroinitializer }, align 32
@zd_write_bssid.reqs = internal constant { [2 x %struct.zd_ioreq32], [16 x i8] } { [2 x %struct.zd_ioreq32] [%struct.zd_ioreq32 { i16 -27112, i32 0 }, %struct.zd_ioreq32 { i16 -27108, i32 0 }], [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bssid\00", [26 x i8] zeroinitializer }, align 32
@zd_read_regdomain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 423, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s() regdomain: %#04x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"zd_read_regdomain\00", [46 x i8] zeroinitializer }, align 32
@zd_read_regdomain._entry_ptr = internal global ptr @zd_read_regdomain._entry, section ".printk_index", align 4
@zd_chip_lock_phy_regs.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.19, ptr @.str.3, ptr @.str.4, i8 0, i8 127, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"zd_chip_lock_phy_regs\00", [42 x i8] zeroinitializer }, align 32
@zd_chip_lock_phy_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.19, ptr @.str.3, i32 513, ptr @.str.21, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"error ioread32(CR_REG1): %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@zd_chip_lock_phy_regs._entry_ptr = internal global ptr @zd_chip_lock_phy_regs._entry, section ".printk_index", align 4
@zd_chip_lock_phy_regs._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.19, ptr @.str.3, i32 521, ptr @.str.21, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"error iowrite32(CR_REG1): %d\0A\00", [34 x i8] zeroinitializer }, align 32
@zd_chip_lock_phy_regs._entry_ptr.24 = internal global ptr @zd_chip_lock_phy_regs._entry.22, section ".printk_index", align 4
@zd_chip_unlock_phy_regs.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.25, ptr @.str.3, ptr @.str.4, i8 0, i8 -124, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"zd_chip_unlock_phy_regs\00", [40 x i8] zeroinitializer }, align 32
@zd_chip_unlock_phy_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.25, ptr @.str.3, i32 534, ptr @.str.21, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@zd_chip_unlock_phy_regs._entry_ptr = internal global ptr @zd_chip_unlock_phy_regs._entry, section ".printk_index", align 4
@zd_chip_unlock_phy_regs._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.25, ptr @.str.3, i32 542, ptr @.str.21, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@zd_chip_unlock_phy_regs._entry_ptr.27 = internal global ptr @zd_chip_unlock_phy_regs._entry.26, section ".printk_index", align 4
@__const.zd_chip_generic_patch_6m_band.ioreqs = private unnamed_addr constant [4 x %struct.zd_ioreq16] [%struct.zd_ioreq16 { i16 -28160, i16 20 }, %struct.zd_ioreq16 { i16 -28156, i16 18 }, %struct.zd_ioreq16 { i16 -28152, i16 16 }, %struct.zd_ioreq16 { i16 -28484, i16 30 }], align 2
@zd_chip_generic_patch_6m_band._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 590, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s() patching for channel %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"zd_chip_generic_patch_6m_band\00", [34 x i8] zeroinitializer }, align 32
@zd_chip_generic_patch_6m_band._entry_ptr = internal global ptr @zd_chip_generic_patch_6m_band._entry, section ".printk_index", align 4
@zd_chip_set_rts_cts_rate_locked._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 1052, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s() preamble=%x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"zd_chip_set_rts_cts_rate_locked\00", [32 x i8] zeroinitializer }, align 32
@zd_chip_set_rts_cts_rate_locked._entry_ptr = internal global ptr @zd_chip_set_rts_cts_rate_locked._entry, section ".printk_index", align 4
@zd_chip_read_mac_addr_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 1108, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s() \0A\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"zd_chip_read_mac_addr_fw\00", [39 x i8] zeroinitializer }, align 32
@zd_chip_read_mac_addr_fw._entry_ptr = internal global ptr @zd_chip_read_mac_addr_fw._entry, section ".printk_index", align 4
@zd_chip_init_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.34, ptr @.str.3, i32 1118, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"zd_chip_init_hw\00", [16 x i8] zeroinitializer }, align 32
@zd_chip_init_hw._entry_ptr = internal global ptr @zd_chip_init_hw._entry, section ".printk_index", align 4
@zd_rfwrite_cr_locked.__UNIQUE_ID_ddebug373 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.35, ptr @.str.3, ptr @.str.4, i8 1, i8 118, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"zd_rfwrite_cr_locked\00", [43 x i8] zeroinitializer }, align 32
@zd_chip_get_tsf.aw_pt_bi_addr = internal constant { [2 x i16], [28 x i8] } { [2 x i16] [i16 -27372, i16 -27368], [28 x i8] zeroinitializer }, align 32
@zd_ioread16v_locked.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.36, ptr @.str.37, ptr @.str.4, i8 0, i8 -56, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"zd_ioread16v_locked\00", [44 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/wireless/zydas/zd1211rw/zd_chip.h\00", [50 x i8] zeroinitializer }, align 32
@_zd_iowrite32v_async_locked.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.38, ptr @.str.3, ptr @.str.4, i8 0, i8 35, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"_zd_iowrite32v_async_locked\00", [36 x i8] zeroinitializer }, align 32
@_zd_iowrite32v_async_locked._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.38, ptr @.str.3, i32 164, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s() error %d in zd_usb_write16v\0A\00", [62 x i8] zeroinitializer }, align 32
@_zd_iowrite32v_async_locked._entry_ptr = internal global ptr @_zd_iowrite32v_async_locked._entry, section ".printk_index", align 4
@zd_ioread16_locked.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.40, ptr @.str.37, ptr @.str.4, i8 0, i8 -55, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"zd_ioread16_locked\00", [45 x i8] zeroinitializer }, align 32
@zd_iowrite16_locked.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.41, ptr @.str.37, ptr @.str.4, i8 0, i8 -50, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"zd_iowrite16_locked\00", [44 x i8] zeroinitializer }, align 32
@zd_write_mac_addr_common._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.3, i32 377, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s() %s addr %pM\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"zd_write_mac_addr_common\00", [39 x i8] zeroinitializer }, align 32
@zd_write_mac_addr_common._entry_ptr = internal global ptr @zd_write_mac_addr_common._entry, section ".printk_index", align 4
@zd_write_mac_addr_common._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.3, i32 379, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s() set NULL %s\0A\00", [46 x i8] zeroinitializer }, align 32
@zd_write_mac_addr_common._entry_ptr.46 = internal global ptr @zd_write_mac_addr_common._entry.44, section ".printk_index", align 4
@set_beacon_interval.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.47, ptr @.str.3, ptr @.str.4, i8 0, i8 -34, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"set_beacon_interval\00", [44 x i8] zeroinitializer }, align 32
@get_aw_pt_bi.aw_pt_bi_addr = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 -27364, i16 -27356, i16 -27360], [26 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CR_AFTER_PNP\00", [19 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CR_GPI_EN\00", [22 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CR_INTERRUPT\00", [19 x i8] zeroinitializer }, align 32
@dump_cr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.3, i32 962, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s() error reading %s. Error number %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dump_cr\00", [24 x i8] zeroinitializer }, align 32
@dump_cr._entry_ptr = internal global ptr @dump_cr._entry, section ".printk_index", align 4
@dump_cr._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.3, i32 967, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s() %s %#010x\0A\00", [16 x i8] zeroinitializer }, align 32
@dump_cr._entry_ptr.55 = internal global ptr @dump_cr._entry.53, section ".printk_index", align 4
@read_fw_regs_offset.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.56, ptr @.str.3, ptr @.str.4, i8 1, i8 17, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"read_fw_regs_offset\00", [44 x i8] zeroinitializer }, align 32
@read_fw_regs_offset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.56, ptr @.str.3, i32 1100, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s() fw_regs_base: %#06hx\0A\00", [37 x i8] zeroinitializer }, align 32
@read_fw_regs_offset._entry_ptr = internal global ptr @read_fw_regs_offset._entry, section ".printk_index", align 4
@set_mandatory_rates.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.58, ptr @.str.3, ptr @.str.4, i8 1, i8 2, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"set_mandatory_rates\00", [44 x i8] zeroinitializer }, align 32
@read_pod.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.59, ptr @.str.3, ptr @.str.4, i8 0, i8 80, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"read_pod\00", [23 x i8] zeroinitializer }, align 32
@read_pod._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.59, ptr @.str.3, i32 326, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s() E2P_POD %#010x\0A\00", [43 x i8] zeroinitializer }, align 32
@read_pod._entry_ptr = internal global ptr @read_pod._entry, section ".printk_index", align 4
@read_pod._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.59, ptr @.str.3, i32 351, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [104 x i8], [56 x i8] } { [104 x i8] c"%s() RF %s %#01x PA type %#01x patch CCK %d patch CR157 %d patch 6M %d new PHY %d link LED%d tx led %d\0A\00", [56 x i8] zeroinitializer }, align 32
@read_pod._entry_ptr.63 = internal global ptr @read_pod._entry.61, section ".printk_index", align 4
@hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.64, ptr @.str.3, i32 934, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hw_init\00", [24 x i8] zeroinitializer }, align 32
@hw_init._entry_ptr = internal global ptr @hw_init._entry, section ".printk_index", align 4
@hw_init.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.64, ptr @.str.3, ptr @.str.4, i8 0, i8 -23, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@zd1211b_hw_reset_phy.ioreqs = internal constant { [138 x %struct.zd_ioreq16], [152 x i8] } { [138 x %struct.zd_ioreq16] [%struct.zd_ioreq16 { i16 -28672, i16 20 }, %struct.zd_ioreq16 { i16 -28668, i16 6 }, %struct.zd_ioreq16 { i16 -28664, i16 38 }, %struct.zd_ioreq16 { i16 -28660, i16 56 }, %struct.zd_ioreq16 { i16 -28640, i16 128 }, %struct.zd_ioreq16 { i16 -28636, i16 224 }, %struct.zd_ioreq16 { i16 -28632, i16 129 }, %struct.zd_ioreq16 { i16 -28628, i16 0 }, %struct.zd_ioreq16 { i16 -28624, i16 240 }, %struct.zd_ioreq16 { i16 -28620, i16 140 }, %struct.zd_ioreq16 { i16 -28616, i16 128 }, %struct.zd_ioreq16 { i16 -28612, i16 61 }, %struct.zd_ioreq16 { i16 -28608, i16 32 }, %struct.zd_ioreq16 { i16 -28604, i16 30 }, %struct.zd_ioreq16 { i16 -28600, i16 10 }, %struct.zd_ioreq16 { i16 -28596, i16 72 }, %struct.zd_ioreq16 { i16 -28592, i16 16 }, %struct.zd_ioreq16 { i16 -28588, i16 14 }, %struct.zd_ioreq16 { i16 -28584, i16 35 }, %struct.zd_ioreq16 { i16 -28580, i16 144 }, %struct.zd_ioreq16 { i16 -28576, i16 20 }, %struct.zd_ioreq16 { i16 -28572, i16 64 }, %struct.zd_ioreq16 { i16 -28568, i16 16 }, %struct.zd_ioreq16 { i16 -28564, i16 16 }, %struct.zd_ioreq16 { i16 -28560, i16 127 }, %struct.zd_ioreq16 { i16 -28556, i16 128 }, %struct.zd_ioreq16 { i16 -28552, i16 75 }, %struct.zd_ioreq16 { i16 -28548, i16 96 }, %struct.zd_ioreq16 { i16 -28544, i16 67 }, %struct.zd_ioreq16 { i16 -28540, i16 8 }, %struct.zd_ioreq16 { i16 -28536, i16 6 }, %struct.zd_ioreq16 { i16 -28532, i16 10 }, %struct.zd_ioreq16 { i16 -28528, i16 0 }, %struct.zd_ioreq16 { i16 -28524, i16 0 }, %struct.zd_ioreq16 { i16 -28520, i16 56 }, %struct.zd_ioreq16 { i16 -28516, i16 12 }, %struct.zd_ioreq16 { i16 -28512, i16 132 }, %struct.zd_ioreq16 { i16 -28508, i16 42 }, %struct.zd_ioreq16 { i16 -28504, i16 128 }, %struct.zd_ioreq16 { i16 -28500, i16 16 }, %struct.zd_ioreq16 { i16 -28496, i16 51 }, %struct.zd_ioreq16 { i16 -28488, i16 255 }, %struct.zd_ioreq16 { i16 -28484, i16 30 }, %struct.zd_ioreq16 { i16 -28480, i16 38 }, %struct.zd_ioreq16 { i16 -28476, i16 91 }, %struct.zd_ioreq16 { i16 -28416, i16 208 }, %struct.zd_ioreq16 { i16 -28412, i16 4 }, %struct.zd_ioreq16 { i16 -28408, i16 88 }, %struct.zd_ioreq16 { i16 -28404, i16 201 }, %struct.zd_ioreq16 { i16 -28400, i16 136 }, %struct.zd_ioreq16 { i16 -28396, i16 65 }, %struct.zd_ioreq16 { i16 -28392, i16 35 }, %struct.zd_ioreq16 { i16 -28388, i16 16 }, %struct.zd_ioreq16 { i16 -28384, i16 255 }, %struct.zd_ioreq16 { i16 -28380, i16 50 }, %struct.zd_ioreq16 { i16 -28376, i16 48 }, %struct.zd_ioreq16 { i16 -28372, i16 101 }, %struct.zd_ioreq16 { i16 -28368, i16 65 }, %struct.zd_ioreq16 { i16 -28364, i16 27 }, %struct.zd_ioreq16 { i16 -28360, i16 48 }, %struct.zd_ioreq16 { i16 -28356, i16 240 }, %struct.zd_ioreq16 { i16 -28352, i16 100 }, %struct.zd_ioreq16 { i16 -28348, i16 100 }, %struct.zd_ioreq16 { i16 -28344, i16 0 }, %struct.zd_ioreq16 { i16 -28340, i16 36 }, %struct.zd_ioreq16 { i16 -28336, i16 4 }, %struct.zd_ioreq16 { i16 -28332, i16 0 }, %struct.zd_ioreq16 { i16 -28328, i16 12 }, %struct.zd_ioreq16 { i16 -28324, i16 18 }, %struct.zd_ioreq16 { i16 -28320, i16 12 }, %struct.zd_ioreq16 { i16 -28316, i16 0 }, %struct.zd_ioreq16 { i16 -28312, i16 88 }, %struct.zd_ioreq16 { i16 -28308, i16 4 }, %struct.zd_ioreq16 { i16 -28304, i16 0 }, %struct.zd_ioreq16 { i16 -28300, i16 0 }, %struct.zd_ioreq16 { i16 -28296, i16 1 }, %struct.zd_ioreq16 { i16 -28292, i16 32 }, %struct.zd_ioreq16 { i16 -28288, i16 80 }, %struct.zd_ioreq16 { i16 -28284, i16 55 }, %struct.zd_ioreq16 { i16 -28280, i16 53 }, %struct.zd_ioreq16 { i16 -28276, i16 0 }, %struct.zd_ioreq16 { i16 -28272, i16 1 }, %struct.zd_ioreq16 { i16 -28268, i16 19 }, %struct.zd_ioreq16 { i16 -28264, i16 39 }, %struct.zd_ioreq16 { i16 -28260, i16 39 }, %struct.zd_ioreq16 { i16 -28256, i16 24 }, %struct.zd_ioreq16 { i16 -28252, i16 18 }, %struct.zd_ioreq16 { i16 -28248, i16 4 }, %struct.zd_ioreq16 { i16 -28244, i16 0 }, %struct.zd_ioreq16 { i16 -28240, i16 10 }, %struct.zd_ioreq16 { i16 -28236, i16 39 }, %struct.zd_ioreq16 { i16 -28232, i16 39 }, %struct.zd_ioreq16 { i16 -28228, i16 39 }, %struct.zd_ioreq16 { i16 -28224, i16 39 }, %struct.zd_ioreq16 { i16 -28220, i16 39 }, %struct.zd_ioreq16 { i16 -28216, i16 39 }, %struct.zd_ioreq16 { i16 -28212, i16 38 }, %struct.zd_ioreq16 { i16 -28208, i16 36 }, %struct.zd_ioreq16 { i16 -28204, i16 252 }, %struct.zd_ioreq16 { i16 -28200, i16 250 }, %struct.zd_ioreq16 { i16 -28196, i16 30 }, %struct.zd_ioreq16 { i16 -28172, i16 144 }, %struct.zd_ioreq16 { i16 -28168, i16 0 }, %struct.zd_ioreq16 { i16 -28164, i16 0 }, %struct.zd_ioreq16 { i16 -28160, i16 20 }, %struct.zd_ioreq16 { i16 -28156, i16 18 }, %struct.zd_ioreq16 { i16 -28152, i16 16 }, %struct.zd_ioreq16 { i16 -28148, i16 12 }, %struct.zd_ioreq16 { i16 -28128, i16 223 }, %struct.zd_ioreq16 { i16 -28124, i16 160 }, %struct.zd_ioreq16 { i16 -28120, i16 168 }, %struct.zd_ioreq16 { i16 -28116, i16 180 }, %struct.zd_ioreq16 { i16 -28112, i16 152 }, %struct.zd_ioreq16 { i16 -28108, i16 130 }, %struct.zd_ioreq16 { i16 -28104, i16 83 }, %struct.zd_ioreq16 { i16 -28100, i16 28 }, %struct.zd_ioreq16 { i16 -28096, i16 108 }, %struct.zd_ioreq16 { i16 -28084, i16 7 }, %struct.zd_ioreq16 { i16 -28080, i16 64 }, %struct.zd_ioreq16 { i16 -28076, i16 64 }, %struct.zd_ioreq16 { i16 -28072, i16 20 }, %struct.zd_ioreq16 { i16 -28068, i16 24 }, %struct.zd_ioreq16 { i16 -28036, i16 112 }, %struct.zd_ioreq16 { i16 -28032, i16 254 }, %struct.zd_ioreq16 { i16 -28028, i16 238 }, %struct.zd_ioreq16 { i16 -28024, i16 170 }, %struct.zd_ioreq16 { i16 -28020, i16 250 }, %struct.zd_ioreq16 { i16 -28016, i16 250 }, %struct.zd_ioreq16 { i16 -28012, i16 234 }, %struct.zd_ioreq16 { i16 -28008, i16 190 }, %struct.zd_ioreq16 { i16 -28004, i16 190 }, %struct.zd_ioreq16 { i16 -28000, i16 106 }, %struct.zd_ioreq16 { i16 -27996, i16 186 }, %struct.zd_ioreq16 { i16 -27992, i16 186 }, %struct.zd_ioreq16 { i16 -27988, i16 186 }, %struct.zd_ioreq16 { i16 -27856, i16 125 }, %struct.zd_ioreq16 zeroinitializer, %struct.zd_ioreq16 { i16 -27860, i16 48 }], [152 x i8] zeroinitializer }, align 32
@zd1211b_hw_reset_phy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.65, ptr @.str.3, i32 746, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"zd1211b_hw_reset_phy\00", [43 x i8] zeroinitializer }, align 32
@zd1211b_hw_reset_phy._entry_ptr = internal global ptr @zd1211b_hw_reset_phy._entry, section ".printk_index", align 4
@zd1211_hw_reset_phy.ioreqs = internal constant { [177 x %struct.zd_ioreq16], [188 x i8] } { [177 x %struct.zd_ioreq16] [%struct.zd_ioreq16 { i16 -28672, i16 10 }, %struct.zd_ioreq16 { i16 -28668, i16 6 }, %struct.zd_ioreq16 { i16 -28664, i16 38 }, %struct.zd_ioreq16 { i16 -28660, i16 56 }, %struct.zd_ioreq16 { i16 -28640, i16 128 }, %struct.zd_ioreq16 { i16 -28636, i16 160 }, %struct.zd_ioreq16 { i16 -28632, i16 129 }, %struct.zd_ioreq16 { i16 -28628, i16 0 }, %struct.zd_ioreq16 { i16 -28624, i16 127 }, %struct.zd_ioreq16 { i16 -28620, i16 140 }, %struct.zd_ioreq16 { i16 -28616, i16 128 }, %struct.zd_ioreq16 { i16 -28612, i16 61 }, %struct.zd_ioreq16 { i16 -28608, i16 32 }, %struct.zd_ioreq16 { i16 -28604, i16 30 }, %struct.zd_ioreq16 { i16 -28600, i16 10 }, %struct.zd_ioreq16 { i16 -28596, i16 72 }, %struct.zd_ioreq16 { i16 -28592, i16 12 }, %struct.zd_ioreq16 { i16 -28588, i16 12 }, %struct.zd_ioreq16 { i16 -28584, i16 35 }, %struct.zd_ioreq16 { i16 -28580, i16 144 }, %struct.zd_ioreq16 { i16 -28576, i16 20 }, %struct.zd_ioreq16 { i16 -28572, i16 64 }, %struct.zd_ioreq16 { i16 -28568, i16 16 }, %struct.zd_ioreq16 { i16 -28564, i16 25 }, %struct.zd_ioreq16 { i16 -28560, i16 127 }, %struct.zd_ioreq16 { i16 -28556, i16 128 }, %struct.zd_ioreq16 { i16 -28552, i16 75 }, %struct.zd_ioreq16 { i16 -28548, i16 96 }, %struct.zd_ioreq16 { i16 -28544, i16 67 }, %struct.zd_ioreq16 { i16 -28540, i16 8 }, %struct.zd_ioreq16 { i16 -28536, i16 6 }, %struct.zd_ioreq16 { i16 -28532, i16 10 }, %struct.zd_ioreq16 { i16 -28528, i16 0 }, %struct.zd_ioreq16 { i16 -28524, i16 0 }, %struct.zd_ioreq16 { i16 -28520, i16 56 }, %struct.zd_ioreq16 { i16 -28516, i16 12 }, %struct.zd_ioreq16 { i16 -28512, i16 132 }, %struct.zd_ioreq16 { i16 -28508, i16 42 }, %struct.zd_ioreq16 { i16 -28504, i16 128 }, %struct.zd_ioreq16 { i16 -28500, i16 16 }, %struct.zd_ioreq16 { i16 -28496, i16 18 }, %struct.zd_ioreq16 { i16 -28488, i16 255 }, %struct.zd_ioreq16 { i16 -28484, i16 30 }, %struct.zd_ioreq16 { i16 -28480, i16 38 }, %struct.zd_ioreq16 { i16 -28476, i16 91 }, %struct.zd_ioreq16 { i16 -28416, i16 208 }, %struct.zd_ioreq16 { i16 -28412, i16 4 }, %struct.zd_ioreq16 { i16 -28408, i16 88 }, %struct.zd_ioreq16 { i16 -28404, i16 201 }, %struct.zd_ioreq16 { i16 -28400, i16 136 }, %struct.zd_ioreq16 { i16 -28396, i16 65 }, %struct.zd_ioreq16 { i16 -28392, i16 35 }, %struct.zd_ioreq16 { i16 -28388, i16 16 }, %struct.zd_ioreq16 { i16 -28384, i16 255 }, %struct.zd_ioreq16 { i16 -28380, i16 50 }, %struct.zd_ioreq16 { i16 -28376, i16 48 }, %struct.zd_ioreq16 { i16 -28372, i16 101 }, %struct.zd_ioreq16 { i16 -28368, i16 65 }, %struct.zd_ioreq16 { i16 -28364, i16 27 }, %struct.zd_ioreq16 { i16 -28360, i16 48 }, %struct.zd_ioreq16 { i16 -28356, i16 104 }, %struct.zd_ioreq16 { i16 -28352, i16 100 }, %struct.zd_ioreq16 { i16 -28348, i16 100 }, %struct.zd_ioreq16 { i16 -28344, i16 0 }, %struct.zd_ioreq16 { i16 -28340, i16 0 }, %struct.zd_ioreq16 { i16 -28336, i16 0 }, %struct.zd_ioreq16 { i16 -28332, i16 2 }, %struct.zd_ioreq16 { i16 -28328, i16 0 }, %struct.zd_ioreq16 { i16 -28324, i16 0 }, %struct.zd_ioreq16 { i16 -28320, i16 255 }, %struct.zd_ioreq16 { i16 -28316, i16 252 }, %struct.zd_ioreq16 { i16 -28312, i16 0 }, %struct.zd_ioreq16 { i16 -28308, i16 0 }, %struct.zd_ioreq16 { i16 -28304, i16 0 }, %struct.zd_ioreq16 { i16 -28300, i16 8 }, %struct.zd_ioreq16 { i16 -28296, i16 0 }, %struct.zd_ioreq16 { i16 -28292, i16 0 }, %struct.zd_ioreq16 { i16 -28288, i16 255 }, %struct.zd_ioreq16 { i16 -28284, i16 231 }, %struct.zd_ioreq16 { i16 -28280, i16 0 }, %struct.zd_ioreq16 { i16 -28276, i16 0 }, %struct.zd_ioreq16 { i16 -28272, i16 0 }, %struct.zd_ioreq16 { i16 -28268, i16 174 }, %struct.zd_ioreq16 { i16 -28264, i16 2 }, %struct.zd_ioreq16 { i16 -28260, i16 0 }, %struct.zd_ioreq16 { i16 -28256, i16 3 }, %struct.zd_ioreq16 { i16 -28252, i16 101 }, %struct.zd_ioreq16 { i16 -28248, i16 4 }, %struct.zd_ioreq16 { i16 -28244, i16 0 }, %struct.zd_ioreq16 { i16 -28240, i16 10 }, %struct.zd_ioreq16 { i16 -28236, i16 170 }, %struct.zd_ioreq16 { i16 -28232, i16 170 }, %struct.zd_ioreq16 { i16 -28228, i16 37 }, %struct.zd_ioreq16 { i16 -28224, i16 37 }, %struct.zd_ioreq16 { i16 -28220, i16 0 }, %struct.zd_ioreq16 { i16 -28196, i16 30 }, %struct.zd_ioreq16 { i16 -28172, i16 144 }, %struct.zd_ioreq16 { i16 -28168, i16 0 }, %struct.zd_ioreq16 { i16 -28164, i16 0 }, %struct.zd_ioreq16 zeroinitializer, %struct.zd_ioreq16 { i16 -28656, i16 0 }, %struct.zd_ioreq16 { i16 -28652, i16 0 }, %struct.zd_ioreq16 { i16 -28648, i16 0 }, %struct.zd_ioreq16 { i16 -28644, i16 0 }, %struct.zd_ioreq16 { i16 -28636, i16 32 }, %struct.zd_ioreq16 { i16 -28624, i16 240 }, %struct.zd_ioreq16 { i16 -28592, i16 14 }, %struct.zd_ioreq16 { i16 -28588, i16 14 }, %struct.zd_ioreq16 { i16 -28564, i16 16 }, %struct.zd_ioreq16 { i16 -28496, i16 51 }, %struct.zd_ioreq16 { i16 -28484, i16 30 }, %struct.zd_ioreq16 { i16 -28340, i16 36 }, %struct.zd_ioreq16 { i16 -28336, i16 4 }, %struct.zd_ioreq16 { i16 -28332, i16 0 }, %struct.zd_ioreq16 { i16 -28328, i16 12 }, %struct.zd_ioreq16 { i16 -28324, i16 18 }, %struct.zd_ioreq16 { i16 -28320, i16 12 }, %struct.zd_ioreq16 { i16 -28316, i16 0 }, %struct.zd_ioreq16 { i16 -28312, i16 16 }, %struct.zd_ioreq16 { i16 -28308, i16 8 }, %struct.zd_ioreq16 { i16 -28300, i16 0 }, %struct.zd_ioreq16 { i16 -28296, i16 1 }, %struct.zd_ioreq16 { i16 -28292, i16 0 }, %struct.zd_ioreq16 { i16 -28288, i16 80 }, %struct.zd_ioreq16 { i16 -28284, i16 55 }, %struct.zd_ioreq16 { i16 -28280, i16 53 }, %struct.zd_ioreq16 { i16 -28268, i16 19 }, %struct.zd_ioreq16 { i16 -28264, i16 39 }, %struct.zd_ioreq16 { i16 -28260, i16 39 }, %struct.zd_ioreq16 { i16 -28256, i16 24 }, %struct.zd_ioreq16 { i16 -28252, i16 18 }, %struct.zd_ioreq16 { i16 -28236, i16 39 }, %struct.zd_ioreq16 { i16 -28232, i16 39 }, %struct.zd_ioreq16 { i16 -28228, i16 39 }, %struct.zd_ioreq16 { i16 -28224, i16 39 }, %struct.zd_ioreq16 { i16 -28220, i16 39 }, %struct.zd_ioreq16 { i16 -28216, i16 39 }, %struct.zd_ioreq16 { i16 -28212, i16 38 }, %struct.zd_ioreq16 { i16 -28208, i16 36 }, %struct.zd_ioreq16 { i16 -28204, i16 252 }, %struct.zd_ioreq16 { i16 -28200, i16 250 }, %struct.zd_ioreq16 { i16 -28192, i16 79 }, %struct.zd_ioreq16 { i16 -28172, i16 170 }, %struct.zd_ioreq16 { i16 -28164, i16 3 }, %struct.zd_ioreq16 { i16 -28160, i16 20 }, %struct.zd_ioreq16 { i16 -28156, i16 18 }, %struct.zd_ioreq16 { i16 -28152, i16 16 }, %struct.zd_ioreq16 { i16 -28148, i16 12 }, %struct.zd_ioreq16 { i16 -28128, i16 223 }, %struct.zd_ioreq16 { i16 -28124, i16 64 }, %struct.zd_ioreq16 { i16 -28120, i16 160 }, %struct.zd_ioreq16 { i16 -28116, i16 176 }, %struct.zd_ioreq16 { i16 -28112, i16 153 }, %struct.zd_ioreq16 { i16 -28108, i16 130 }, %struct.zd_ioreq16 { i16 -28104, i16 84 }, %struct.zd_ioreq16 { i16 -28100, i16 28 }, %struct.zd_ioreq16 { i16 -28096, i16 108 }, %struct.zd_ioreq16 { i16 -28084, i16 7 }, %struct.zd_ioreq16 { i16 -28080, i16 76 }, %struct.zd_ioreq16 { i16 -28076, i16 80 }, %struct.zd_ioreq16 { i16 -28072, i16 14 }, %struct.zd_ioreq16 { i16 -28068, i16 24 }, %struct.zd_ioreq16 { i16 -28032, i16 254 }, %struct.zd_ioreq16 { i16 -28028, i16 238 }, %struct.zd_ioreq16 { i16 -28024, i16 170 }, %struct.zd_ioreq16 { i16 -28020, i16 250 }, %struct.zd_ioreq16 { i16 -28016, i16 250 }, %struct.zd_ioreq16 { i16 -28012, i16 234 }, %struct.zd_ioreq16 { i16 -28008, i16 190 }, %struct.zd_ioreq16 { i16 -28004, i16 190 }, %struct.zd_ioreq16 { i16 -28000, i16 106 }, %struct.zd_ioreq16 { i16 -27996, i16 186 }, %struct.zd_ioreq16 { i16 -27992, i16 186 }, %struct.zd_ioreq16 { i16 -27988, i16 186 }, %struct.zd_ioreq16 { i16 -27856, i16 125 }, %struct.zd_ioreq16 zeroinitializer, %struct.zd_ioreq16 { i16 -27860, i16 48 }], [188 x i8] zeroinitializer }, align 32
@zd1211_hw_reset_phy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.66, ptr @.str.3, i32 664, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"zd1211_hw_reset_phy\00", [44 x i8] zeroinitializer }, align 32
@zd1211_hw_reset_phy._entry_ptr = internal global ptr @zd1211_hw_reset_phy._entry, section ".printk_index", align 4
@patch_cr157._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.3, i32 559, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s() patching value %x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"patch_cr157\00", [20 x i8] zeroinitializer }, align 32
@patch_cr157._entry_ptr = internal global ptr @patch_cr157._entry, section ".printk_index", align 4
@hw_init_hmac.ioreqs = internal constant { [20 x %struct.zd_ioreq32], [32 x i8] } { [20 x %struct.zd_ioreq32] [%struct.zd_ioreq32 { i16 -26992, i32 32 }, %struct.zd_ioreq32 { i16 -27384, i32 805308424 }, %struct.zd_ioreq32 { i16 -27020, i32 0 }, %struct.zd_ioreq32 { i16 -26996, i32 604045311 }, %struct.zd_ioreq32 { i16 -27100, i32 0 }, %struct.zd_ioreq32 { i16 -27096, i32 -2147483648 }, %struct.zd_ioreq32 { i16 -27008, i32 164 }, %struct.zd_ioreq32 { i16 -27388, i32 127 }, %struct.zd_ioreq32 { i16 -27104, i32 15729665 }, %struct.zd_ioreq32 { i16 -27028, i32 0 }, %struct.zd_ioreq32 { i16 -26992, i32 128 }, %struct.zd_ioreq32 { i16 -27388, i32 0 }, %struct.zd_ioreq32 { i16 -27048, i32 256 }, %struct.zd_ioreq32 { i16 -27524, i32 112 }, %struct.zd_ioreq32 { i16 -27392, i32 268435456 }, %struct.zd_ioreq32 { i16 -27080, i32 33751555 }, %struct.zd_ioreq32 { i16 -27064, i32 1 }, %struct.zd_ioreq32 { i16 -27076, i32 276 }, %struct.zd_ioreq32 { i16 -26984, i32 172474418 }, %struct.zd_ioreq32 { i16 -26880, i32 3 }], [32 x i8] zeroinitializer }, align 32
@hw_init_hmac.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.69, ptr @.str.3, ptr @.str.4, i8 0, i8 -51, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hw_init_hmac\00", [19 x i8] zeroinitializer }, align 32
@zd1211b_hw_init_hmac.ioreqs = internal constant { [9 x %struct.zd_ioreq32], [56 x i8] } { [9 x %struct.zd_ioreq32] [%struct.zd_ioreq32 { i16 -25816, i32 0 }, %struct.zd_ioreq32 { i16 -25856, i32 8323135 }, %struct.zd_ioreq32 { i16 -25852, i32 8323135 }, %struct.zd_ioreq32 { i16 -25848, i32 4128799 }, %struct.zd_ioreq32 { i16 -25844, i32 2031631 }, %struct.zd_ioreq32 { i16 -25840, i32 2621480 }, %struct.zd_ioreq32 { i16 -25836, i32 9175100 }, %struct.zd_ioreq32 { i16 -25824, i32 25167908 }, %struct.zd_ioreq32 { i16 -27072, i32 790271 }], [56 x i8] zeroinitializer }, align 32
@zd1211b_hw_init_hmac._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.70, ptr @.str.3, i32 792, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"zd1211b_hw_init_hmac\00", [43 x i8] zeroinitializer }, align 32
@zd1211b_hw_init_hmac._entry_ptr = internal global ptr @zd1211b_hw_init_hmac._entry, section ".printk_index", align 4
@zd1211b_hw_init_hmac.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.70, ptr @.str.3, ptr @.str.4, i8 0, i8 -58, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@zd1211_hw_init_hmac.ioreqs = internal constant { [2 x %struct.zd_ioreq32], [16 x i8] } { [2 x %struct.zd_ioreq32] [%struct.zd_ioreq32 { i16 -27012, i32 0 }, %struct.zd_ioreq32 { i16 -27072, i32 788032 }], [16 x i8] zeroinitializer }, align 32
@zd1211_hw_init_hmac._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.71, ptr @.str.3, i32 773, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"zd1211_hw_init_hmac\00", [44 x i8] zeroinitializer }, align 32
@zd1211_hw_init_hmac._entry_ptr = internal global ptr @zd1211_hw_init_hmac._entry, section ".printk_index", align 4
@zd1211_hw_init_hmac.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.71, ptr @.str.3, ptr @.str.4, i8 0, i8 -63, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@print_fw_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.3, i32 1022, ptr @.str.74, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"firmware version %04hx\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"print_fw_version\00", [47 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@print_fw_version._entry_ptr = internal global ptr @print_fw_version._entry, section ".printk_index", align 4
@.str.75 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%04hx\00", [26 x i8] zeroinitializer }, align 32
@dump_fw_registers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.3, i32 1000, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s() error %d zd_ioread16v_locked\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dump_fw_registers\00", [46 x i8] zeroinitializer }, align 32
@dump_fw_registers._entry_ptr = internal global ptr @dump_fw_registers._entry, section ".printk_index", align 4
@dump_fw_registers._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.77, ptr @.str.3, i32 1004, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s() FW_FIRMWARE_VER %#06hx\0A\00", [35 x i8] zeroinitializer }, align 32
@dump_fw_registers._entry_ptr.80 = internal global ptr @dump_fw_registers._entry.78, section ".printk_index", align 4
@dump_fw_registers._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.77, ptr @.str.3, i32 1005, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s() FW_USB_SPEED %#06hx\0A\00", [38 x i8] zeroinitializer }, align 32
@dump_fw_registers._entry_ptr.83 = internal global ptr @dump_fw_registers._entry.81, section ".printk_index", align 4
@dump_fw_registers._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.77, ptr @.str.3, i32 1006, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s() FW_FIX_TX_RATE %#06hx\0A\00", [36 x i8] zeroinitializer }, align 32
@dump_fw_registers._entry_ptr.86 = internal global ptr @dump_fw_registers._entry.84, section ".printk_index", align 4
@dump_fw_registers._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.77, ptr @.str.3, i32 1007, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s() FW_LINK_STATUS %#06hx\0A\00", [36 x i8] zeroinitializer }, align 32
@dump_fw_registers._entry_ptr.89 = internal global ptr @dump_fw_registers._entry.87, section ".printk_index", align 4
@read_values.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.90, ptr @.str.3, ptr @.str.4, i8 0, i8 108, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"read_values\00", [20 x i8] zeroinitializer }, align 32
@print_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.3, i32 74, ptr @.str.74, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"print_id\00", [23 x i8] zeroinitializer }, align 32
@print_id._entry_ptr = internal global ptr @print_id._entry, section ".printk_index", align 4
@.str.93 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"zd1211%s chip \00", [17 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"b\00", [30 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.96 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c" pa%1x %c%c%c%c%c\00", [46 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%3phD\00", [26 x i8] zeroinitializer }, align 32
@update_channel_integration_and_calibration.ioreqs = internal constant { [3 x %struct.zd_ioreq16], [20 x i8] } { [3 x %struct.zd_ioreq16] [%struct.zd_ioreq16 { i16 -28396, i16 40 }, %struct.zd_ioreq16 zeroinitializer, %struct.zd_ioreq16 { i16 -28396, i16 42 }], [20 x i8] zeroinitializer }, align 32
@patch_cck_gain.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.99, ptr @.str.3, ptr @.str.4, i8 1, i8 57, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"patch_cck_gain\00", [17 x i8] zeroinitializer }, align 32
@patch_cck_gain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.99, ptr @.str.3, i32 1257, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@patch_cck_gain._entry_ptr = internal global ptr @patch_cck_gain._entry, section ".printk_index", align 4
@patch_6m_band_edge.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.100, ptr @.str.3, ptr @.str.4, i8 0, i8 -114, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"patch_6m_band_edge\00", [45 x i8] zeroinitializer }, align 32
@zd_rfwrite_locked.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.101, ptr @.str.37, ptr @.str.4, i8 0, i8 -43, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"zd_rfwrite_locked\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 11]
@__sancov_gen_cov_switch_values.102 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 7]
@__sancov_gen_cov_switch_values.103 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.104 = internal global [5 x i64] [i64 3, i64 8, i64 20, i64 55, i64 110]
@___asan_gen_.105 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 27, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 34, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 118, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 190, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 208, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 245, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 393, i32 33 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 398, i32 56 }
@___asan_gen_.168 = private unnamed_addr constant [5 x i8] c"reqs\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 403, i32 33 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 408, i32 53 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 423, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 510, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 513, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 521, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 530, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 533, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 542, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 590, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1052, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1108, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1118, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1498, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1531, i32 25 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 800, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 141, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 163, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 807, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 825, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 377, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 379, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 888, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant [14 x i8] c"aw_pt_bi_addr\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 841, i32 25 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 975, i32 34 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 978, i32 31 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 981, i32 37 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 961, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 966, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1094, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1099, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1033, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 322, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 326, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 343, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 934, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 685, i32 33 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 746, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 596, i32 33 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 664, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 559, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 800, i32 33 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 823, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 780, i32 33 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 792, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 768, i32 33 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 773, i32 2 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1022, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1025, i32 4 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 999, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1004, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1005, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1006, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1007, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 435, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 74, i32 2 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 52, i32 30 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 53, i32 36 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 53, i32 42 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 55, i32 35 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 59, i32 35 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 44, i32 33 }
@___asan_gen_.477 = private unnamed_addr constant [7 x i8] c"ioreqs\00", align 1
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1224, i32 34 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1253, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1257, i32 2 }
@___asan_gen_.487 = private constant [49 x i8] c"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c\00", align 1
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 570, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.490 = private unnamed_addr constant [49 x i8] c"../drivers/net/wireless/zydas/zd1211rw/zd_chip.h\00", align 1
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 854, i32 2 }
@llvm.compiler.used = appending global [163 x ptr] [ptr @_zd_iowrite32v_async_locked._entry, ptr @_zd_iowrite32v_async_locked._entry_ptr, ptr @dump_cr._entry, ptr @dump_cr._entry.53, ptr @dump_cr._entry_ptr, ptr @dump_cr._entry_ptr.55, ptr @dump_fw_registers._entry, ptr @dump_fw_registers._entry.78, ptr @dump_fw_registers._entry.81, ptr @dump_fw_registers._entry.84, ptr @dump_fw_registers._entry.87, ptr @dump_fw_registers._entry_ptr, ptr @dump_fw_registers._entry_ptr.80, ptr @dump_fw_registers._entry_ptr.83, ptr @dump_fw_registers._entry_ptr.86, ptr @dump_fw_registers._entry_ptr.89, ptr @hw_init._entry, ptr @hw_init._entry_ptr, ptr @patch_cck_gain._entry, ptr @patch_cck_gain._entry_ptr, ptr @patch_cr157._entry, ptr @patch_cr157._entry_ptr, ptr @print_fw_version._entry, ptr @print_fw_version._entry_ptr, ptr @print_id._entry, ptr @print_id._entry_ptr, ptr @read_fw_regs_offset._entry, ptr @read_fw_regs_offset._entry_ptr, ptr @read_pod._entry, ptr @read_pod._entry.61, ptr @read_pod._entry_ptr, ptr @read_pod._entry_ptr.63, ptr @zd1211_hw_init_hmac._entry, ptr @zd1211_hw_init_hmac._entry_ptr, ptr @zd1211_hw_reset_phy._entry, ptr @zd1211_hw_reset_phy._entry_ptr, ptr @zd1211b_hw_init_hmac._entry, ptr @zd1211b_hw_init_hmac._entry_ptr, ptr @zd1211b_hw_reset_phy._entry, ptr @zd1211b_hw_reset_phy._entry_ptr, ptr @zd_chip_generic_patch_6m_band._entry, ptr @zd_chip_generic_patch_6m_band._entry_ptr, ptr @zd_chip_init_hw._entry, ptr @zd_chip_init_hw._entry_ptr, ptr @zd_chip_lock_phy_regs._entry, ptr @zd_chip_lock_phy_regs._entry.22, ptr @zd_chip_lock_phy_regs._entry_ptr, ptr @zd_chip_lock_phy_regs._entry_ptr.24, ptr @zd_chip_read_mac_addr_fw._entry, ptr @zd_chip_read_mac_addr_fw._entry_ptr, ptr @zd_chip_set_rts_cts_rate_locked._entry, ptr @zd_chip_set_rts_cts_rate_locked._entry_ptr, ptr @zd_chip_unlock_phy_regs._entry, ptr @zd_chip_unlock_phy_regs._entry.26, ptr @zd_chip_unlock_phy_regs._entry_ptr, ptr @zd_chip_unlock_phy_regs._entry_ptr.27, ptr @zd_ioread32v_locked._entry, ptr @zd_ioread32v_locked._entry_ptr, ptr @zd_iowrite16a_locked._entry, ptr @zd_iowrite16a_locked._entry_ptr, ptr @zd_iowrite32a_locked._entry, ptr @zd_iowrite32a_locked._entry_ptr, ptr @zd_read_regdomain._entry, ptr @zd_read_regdomain._entry_ptr, ptr @zd_write_mac_addr_common._entry, ptr @zd_write_mac_addr_common._entry.44, ptr @zd_write_mac_addr_common._entry_ptr, ptr @zd_write_mac_addr_common._entry_ptr.46, ptr @zd_chip_init.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @zd_write_mac_addr.reqs, ptr @.str.15, ptr @zd_write_bssid.reqs, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @zd_chip_get_tsf.aw_pt_bi_addr, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @get_aw_pt_bi.aw_pt_bi_addr, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @zd1211b_hw_reset_phy.ioreqs, ptr @.str.65, ptr @zd1211_hw_reset_phy.ioreqs, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @hw_init_hmac.ioreqs, ptr @.str.69, ptr @zd1211b_hw_init_hmac.ioreqs, ptr @.str.70, ptr @zd1211_hw_init_hmac.ioreqs, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.79, ptr @.str.82, ptr @.str.85, ptr @.str.88, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @update_channel_integration_and_calibration.ioreqs, ptr @.str.99, ptr @.str.100, ptr @.str.101], section "llvm.metadata"
@0 = internal global [129 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_chip_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_ioread32v_locked._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_iowrite16a_locked._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_iowrite32a_locked._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_write_mac_addr.reqs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_write_bssid.reqs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_read_regdomain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_chip_lock_phy_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_chip_lock_phy_regs._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_chip_unlock_phy_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_chip_unlock_phy_regs._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_chip_generic_patch_6m_band._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_chip_set_rts_cts_rate_locked._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_chip_read_mac_addr_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_chip_init_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_chip_get_tsf.aw_pt_bi_addr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_zd_iowrite32v_async_locked._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_write_mac_addr_common._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_write_mac_addr_common._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_aw_pt_bi.aw_pt_bi_addr to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_cr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_cr._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_fw_regs_offset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_pod._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_pod._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd1211b_hw_reset_phy.ioreqs to i32), i32 552, i32 704, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd1211b_hw_reset_phy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd1211_hw_reset_phy.ioreqs to i32), i32 708, i32 896, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd1211_hw_reset_phy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @patch_cr157._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_init_hmac.ioreqs to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd1211b_hw_init_hmac.ioreqs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd1211b_hw_init_hmac._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd1211_hw_init_hmac.ioreqs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd1211_hw_init_hmac._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fw_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_fw_registers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_fw_registers._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_fw_registers._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_fw_registers._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_fw_registers._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_channel_integration_and_calibration.ioreqs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @patch_cck_gain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @zd_chip_init(ptr noundef %chip, ptr noundef %hw, ptr noundef %intf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %chip, i32 0, i32 10796)
  %mutex = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str, ptr noundef nonnull @zd_chip_init.__key) #8
  tail call void @zd_usb_init(ptr noundef %chip, ptr noundef %hw, ptr noundef %intf) #8
  %rf = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 1
  tail call void @zd_rf_init(ptr noundef %rf) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @zd_usb_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @zd_rf_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @zd_chip_clear(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 2
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %mutex) #8
  br i1 %call, label %do.body4, label %entry.do.end17_crit_edge, !prof !273

entry.do.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end17

do.body4:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd_chip_clear.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@zd_chip_clear, %do.end)) #8
          to label %if.then15 [label %do.end], !srcloc !274

if.then15:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zd_chip_clear.__UNIQUE_ID_ddebug357, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i32 noundef 34, ptr noundef nonnull @.str.5) #8
  br label %do.end

do.end:                                           ; preds = %if.then15, %do.body4
  tail call void @dump_stack() #11
  br label %do.end17

do.end17:                                         ; preds = %do.end, %entry.do.end17_crit_edge
  tail call void @zd_usb_clear(ptr noundef %chip) #8
  %rf = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 1
  tail call void @zd_rf_clear(ptr noundef %rf) #8
  tail call void @mutex_destroy(ptr noundef %mutex) #8
  %0 = call ptr @memset(ptr %chip, i32 255, i32 10796)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @zd_usb_clear(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @zd_rf_clear(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zd_ioread32v_locked(ptr noundef %chip, ptr nocapture noundef writeonly %values, ptr nocapture noundef readonly %addr, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  %a16 = alloca [14 x i16], align 2
  %v16 = alloca [14 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %a16) #8
  %0 = call ptr @memset(ptr %a16, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %v16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %count)
  %cmp = icmp ugt i32 %count, 7
  %1 = call ptr @memset(ptr %v16, i32 255, i32 28)
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %mul = shl nuw nsw i32 %count, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp3180.not = icmp eq i32 %count, 0
  br i1 %cmp3180.not, label %if.end.for.end_crit_edge, label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %if.end
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %addr, align 2
  %4 = and i16 %3, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -28672, i16 %4)
  %cmp.i = icmp eq i16 %4, -28672
  %a.0.v.i = select i1 %cmp.i, i16 2, i16 1
  %a.0.i = add i16 %a.0.v.i, %3
  %5 = ptrtoint ptr %a16 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %a.0.i, ptr %a16, align 2
  %arrayidx35 = getelementptr inbounds [14 x i16], ptr %a16, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %3, ptr %arrayidx35, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %exitcond.not = icmp eq i32 %count, 1
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.1

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.1:                                       ; preds = %for.body
  %arrayidx.1 = getelementptr i16, ptr %addr, i32 1
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx.1, align 2
  %9 = and i16 %8, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -28672, i16 %9)
  %cmp.i.1 = icmp eq i16 %9, -28672
  %a.0.v.i.1 = select i1 %cmp.i.1, i16 2, i16 1
  %a.0.i.1 = add i16 %a.0.v.i.1, %8
  %arrayidx33.1 = getelementptr inbounds [14 x i16], ptr %a16, i32 0, i32 2
  %10 = ptrtoint ptr %arrayidx33.1 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %a.0.i.1, ptr %arrayidx33.1, align 2
  %arrayidx35.1 = getelementptr inbounds [14 x i16], ptr %a16, i32 0, i32 3
  %11 = ptrtoint ptr %arrayidx35.1 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %8, ptr %arrayidx35.1, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %count)
  %exitcond.not.1 = icmp eq i32 %count, 2
  br i1 %exitcond.not.1, label %for.body.1.for.end_crit_edge, label %for.body.2

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.2:                                       ; preds = %for.body.1
  %arrayidx.2 = getelementptr i16, ptr %addr, i32 2
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx.2, align 2
  %14 = and i16 %13, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -28672, i16 %14)
  %cmp.i.2 = icmp eq i16 %14, -28672
  %a.0.v.i.2 = select i1 %cmp.i.2, i16 2, i16 1
  %a.0.i.2 = add i16 %a.0.v.i.2, %13
  %arrayidx33.2 = getelementptr inbounds [14 x i16], ptr %a16, i32 0, i32 4
  %15 = ptrtoint ptr %arrayidx33.2 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %a.0.i.2, ptr %arrayidx33.2, align 2
  %arrayidx35.2 = getelementptr inbounds [14 x i16], ptr %a16, i32 0, i32 5
  %16 = ptrtoint ptr %arrayidx35.2 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %13, ptr %arrayidx35.2, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count)
  %exitcond.not.2 = icmp eq i32 %count, 3
  br i1 %exitcond.not.2, label %for.body.2.for.end_crit_edge, label %for.body.3

for.body.2.for.end_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.3:                                       ; preds = %for.body.2
  %arrayidx.3 = getelementptr i16, ptr %addr, i32 3
  %17 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx.3, align 2
  %19 = and i16 %18, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -28672, i16 %19)
  %cmp.i.3 = icmp eq i16 %19, -28672
  %a.0.v.i.3 = select i1 %cmp.i.3, i16 2, i16 1
  %a.0.i.3 = add i16 %a.0.v.i.3, %18
  %arrayidx33.3 = getelementptr inbounds [14 x i16], ptr %a16, i32 0, i32 6
  %20 = ptrtoint ptr %arrayidx33.3 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %a.0.i.3, ptr %arrayidx33.3, align 2
  %arrayidx35.3 = getelementptr inbounds [14 x i16], ptr %a16, i32 0, i32 7
  %21 = ptrtoint ptr %arrayidx35.3 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %18, ptr %arrayidx35.3, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %count)
  %exitcond.not.3 = icmp eq i32 %count, 4
  br i1 %exitcond.not.3, label %for.body.3.for.end_crit_edge, label %for.body.4

for.body.3.for.end_crit_edge:                     ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.4:                                       ; preds = %for.body.3
  %arrayidx.4 = getelementptr i16, ptr %addr, i32 4
  %22 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx.4, align 2
  %24 = and i16 %23, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -28672, i16 %24)
  %cmp.i.4 = icmp eq i16 %24, -28672
  %a.0.v.i.4 = select i1 %cmp.i.4, i16 2, i16 1
  %a.0.i.4 = add i16 %a.0.v.i.4, %23
  %arrayidx33.4 = getelementptr inbounds [14 x i16], ptr %a16, i32 0, i32 8
  %25 = ptrtoint ptr %arrayidx33.4 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %a.0.i.4, ptr %arrayidx33.4, align 2
  %arrayidx35.4 = getelementptr inbounds [14 x i16], ptr %a16, i32 0, i32 9
  %26 = ptrtoint ptr %arrayidx35.4 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %23, ptr %arrayidx35.4, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %count)
  %exitcond.not.4 = icmp eq i32 %count, 5
  br i1 %exitcond.not.4, label %for.body.4.for.end_crit_edge, label %for.body.5

for.body.4.for.end_crit_edge:                     ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.5:                                       ; preds = %for.body.4
  %arrayidx.5 = getelementptr i16, ptr %addr, i32 5
  %27 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx.5, align 2
  %29 = and i16 %28, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -28672, i16 %29)
  %cmp.i.5 = icmp eq i16 %29, -28672
  %a.0.v.i.5 = select i1 %cmp.i.5, i16 2, i16 1
  %a.0.i.5 = add i16 %a.0.v.i.5, %28
  %arrayidx33.5 = getelementptr inbounds [14 x i16], ptr %a16, i32 0, i32 10
  %30 = ptrtoint ptr %arrayidx33.5 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %a.0.i.5, ptr %arrayidx33.5, align 2
  %arrayidx35.5 = getelementptr inbounds [14 x i16], ptr %a16, i32 0, i32 11
  %31 = ptrtoint ptr %arrayidx35.5 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %28, ptr %arrayidx35.5, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %count)
  %exitcond.not.5 = icmp eq i32 %count, 6
  br i1 %exitcond.not.5, label %for.body.5.for.end_crit_edge, label %for.body.6

for.body.5.for.end_crit_edge:                     ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.6:                                       ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.6 = getelementptr i16, ptr %addr, i32 6
  %32 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx.6, align 2
  %34 = and i16 %33, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -28672, i16 %34)
  %cmp.i.6 = icmp eq i16 %34, -28672
  %a.0.v.i.6 = select i1 %cmp.i.6, i16 2, i16 1
  %a.0.i.6 = add i16 %a.0.v.i.6, %33
  %arrayidx33.6 = getelementptr inbounds [14 x i16], ptr %a16, i32 0, i32 12
  %35 = ptrtoint ptr %arrayidx33.6 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %a.0.i.6, ptr %arrayidx33.6, align 2
  %arrayidx35.6 = getelementptr inbounds [14 x i16], ptr %a16, i32 0, i32 13
  %36 = ptrtoint ptr %arrayidx35.6 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %33, ptr %arrayidx35.6, align 2
  br label %for.end

for.end:                                          ; preds = %for.body.6, %for.body.5.for.end_crit_edge, %for.body.4.for.end_crit_edge, %for.body.3.for.end_crit_edge, %for.body.2.for.end_crit_edge, %for.body.1.for.end_crit_edge, %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %mutex.i = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 2
  %call.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mutex.i) #8
  br i1 %call.i, label %for.end.zd_ioread16v_locked.exit_crit_edge, label %do.body3.i, !prof !275

for.end.zd_ioread16v_locked.exit_crit_edge:       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %zd_ioread16v_locked.exit

do.body3.i:                                       ; preds = %for.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd_ioread16v_locked.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@zd_ioread32v_locked, %do.end.i)) #8
          to label %if.then14.i [label %do.end.i], !srcloc !274

if.then14.i:                                      ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zd_ioread16v_locked.__UNIQUE_ID_ddebug353, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.37, i32 noundef 800, ptr noundef nonnull @.str.11) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then14.i, %do.body3.i
  tail call void @dump_stack() #11
  br label %zd_ioread16v_locked.exit

zd_ioread16v_locked.exit:                         ; preds = %do.end.i, %for.end.zd_ioread16v_locked.exit_crit_edge
  %call17.i = call i32 @zd_usb_ioread16v(ptr noundef %chip, ptr noundef nonnull %v16, ptr noundef nonnull %a16, i32 noundef %mul) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool38.not = icmp eq i32 %call17.i, 0
  br i1 %tobool38.not, label %for.cond44.preheader, label %do.end42

for.cond44.preheader:                             ; preds = %zd_ioread16v_locked.exit
  br i1 %cmp3180.not, label %for.cond44.preheader.cleanup_crit_edge, label %for.cond44.preheader.for.body46_crit_edge

for.cond44.preheader.for.body46_crit_edge:        ; preds = %for.cond44.preheader
  br label %for.body46

for.cond44.preheader.cleanup_crit_edge:           ; preds = %for.cond44.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end42:                                         ; preds = %zd_ioread16v_locked.exit
  call void @__sanitizer_cov_trace_pc() #10
  %intf = getelementptr inbounds %struct.zd_usb, ptr %chip, i32 0, i32 3
  %37 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %38, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.7, i32 noundef %call17.i) #11
  br label %cleanup

for.body46:                                       ; preds = %for.body46.for.body46_crit_edge, %for.cond44.preheader.for.body46_crit_edge
  %i.183 = phi i32 [ %inc55, %for.body46.for.body46_crit_edge ], [ 0, %for.cond44.preheader.for.body46_crit_edge ]
  %mul48 = shl i32 %i.183, 1
  %arrayidx49 = getelementptr [14 x i16], ptr %v16, i32 0, i32 %mul48
  %39 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx49, align 2
  %conv = zext i16 %40 to i32
  %shl = shl nuw i32 %conv, 16
  %add50 = or i32 %mul48, 1
  %arrayidx51 = getelementptr [14 x i16], ptr %v16, i32 0, i32 %add50
  %41 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx51, align 2
  %conv52 = zext i16 %42 to i32
  %or = or i32 %shl, %conv52
  %arrayidx53 = getelementptr i32, ptr %values, i32 %i.183
  %43 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or, ptr %arrayidx53, align 4
  %inc55 = add nuw i32 %i.183, 1
  %exitcond84.not = icmp eq i32 %inc55, %count
  br i1 %exitcond84.not, label %for.body46.cleanup_crit_edge, label %for.body46.for.body46_crit_edge

for.body46.for.body46_crit_edge:                  ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body46

for.body46.cleanup_crit_edge:                     ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.body46.cleanup_crit_edge, %do.end42, %for.cond44.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17.i, %do.end42 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %for.cond44.preheader.cleanup_crit_edge ], [ 0, %for.body46.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %v16) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %a16) #8
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @_zd_iowrite32v_locked(ptr noundef %chip, ptr nocapture noundef readonly %ioreqs, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @zd_usb_iowrite16v_async_start(ptr noundef %chip) #8
  %call = tail call fastcc i32 @_zd_iowrite32v_async_locked(ptr noundef %chip, ptr noundef %ioreqs, i32 noundef %count)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 @zd_usb_iowrite16v_async_end(ptr noundef %chip, i32 noundef 0) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 @zd_usb_iowrite16v_async_end(ptr noundef %chip, i32 noundef 50) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call4, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @zd_usb_iowrite16v_async_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_zd_iowrite32v_async_locked(ptr noundef %chip, ptr nocapture noundef readonly %ioreqs, i32 noundef %count) unnamed_addr #0 align 64 {
entry:
  %ioreqs16 = alloca [14 x %struct.zd_ioreq16], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %ioreqs16) #8
  %0 = call ptr @memset(ptr %ioreqs16, i32 255, i32 56)
  %mutex = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 2
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %mutex) #8
  br i1 %call, label %entry.do.end17_crit_edge, label %do.body3, !prof !275

entry.do.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end17

do.body3:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_zd_iowrite32v_async_locked.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@_zd_iowrite32v_async_locked, %do.end)) #8
          to label %if.then14 [label %do.end], !srcloc !274

if.then14:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_zd_iowrite32v_async_locked.__UNIQUE_ID_ddebug358, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i32 noundef 141, ptr noundef nonnull @.str.11) #8
  br label %do.end

do.end:                                           ; preds = %if.then14, %do.body3
  tail call void @dump_stack() #11
  br label %do.end17

do.end17:                                         ; preds = %do.end, %entry.do.end17_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp eq i32 %count, 0
  br i1 %cmp, label %do.end17.cleanup_crit_edge, label %if.end19

do.end17.cleanup_crit_edge:                       ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %do.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %count)
  %cmp20 = icmp ugt i32 %count, 7
  br i1 %cmp20, label %if.end19.cleanup_crit_edge, label %for.body.preheader

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.preheader:                               ; preds = %if.end19
  %mul = shl nuw nsw i32 %count, 1
  %value = getelementptr %struct.zd_ioreq32, ptr %ioreqs, i32 0, i32 1
  %1 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %value, align 4
  %shr = lshr i32 %2, 16
  %conv = trunc i32 %shr to i16
  %value45 = getelementptr inbounds [14 x %struct.zd_ioreq16], ptr %ioreqs16, i32 0, i32 0, i32 1
  %3 = ptrtoint ptr %value45 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv, ptr %value45, align 2
  %4 = ptrtoint ptr %ioreqs to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ioreqs, align 4
  %6 = and i16 %5, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -28672, i16 %6)
  %cmp.i = icmp eq i16 %6, -28672
  %a.0.v.i = select i1 %cmp.i, i16 2, i16 1
  %a.0.i = add i16 %a.0.v.i, %5
  %7 = ptrtoint ptr %ioreqs16 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %a.0.i, ptr %ioreqs16, align 2
  %conv52 = trunc i32 %2 to i16
  %arrayidx53 = getelementptr inbounds [14 x %struct.zd_ioreq16], ptr %ioreqs16, i32 0, i32 1
  %value54 = getelementptr inbounds [14 x %struct.zd_ioreq16], ptr %ioreqs16, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %value54 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv52, ptr %value54, align 2
  %9 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %5, ptr %arrayidx53, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %exitcond.not = icmp eq i32 %count, 1
  br i1 %exitcond.not, label %for.body.preheader.for.end_crit_edge, label %for.body.1

for.body.preheader.for.end_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.1:                                       ; preds = %for.body.preheader
  %arrayidx.1 = getelementptr %struct.zd_ioreq32, ptr %ioreqs, i32 1
  %value.1 = getelementptr %struct.zd_ioreq32, ptr %ioreqs, i32 1, i32 1
  %10 = ptrtoint ptr %value.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %value.1, align 4
  %shr.1 = lshr i32 %11, 16
  %conv.1 = trunc i32 %shr.1 to i16
  %arrayidx44.1 = getelementptr inbounds [14 x %struct.zd_ioreq16], ptr %ioreqs16, i32 0, i32 2
  %value45.1 = getelementptr inbounds [14 x %struct.zd_ioreq16], ptr %ioreqs16, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %value45.1 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.1, ptr %value45.1, align 2
  %13 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx.1, align 4
  %15 = and i16 %14, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -28672, i16 %15)
  %cmp.i.1 = icmp eq i16 %15, -28672
  %a.0.v.i.1 = select i1 %cmp.i.1, i16 2, i16 1
  %a.0.i.1 = add i16 %a.0.v.i.1, %14
  %16 = ptrtoint ptr %arrayidx44.1 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %a.0.i.1, ptr %arrayidx44.1, align 2
  %conv52.1 = trunc i32 %11 to i16
  %arrayidx53.1 = getelementptr inbounds [14 x %struct.zd_ioreq16], ptr %ioreqs16, i32 0, i32 3
  %value54.1 = getelementptr inbounds [14 x %struct.zd_ioreq16], ptr %ioreqs16, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %value54.1 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv52.1, ptr %value54.1, align 2
  %18 = ptrtoint ptr %arrayidx53.1 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %14, ptr %arrayidx53.1, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %count)
  %exitcond.not.1 = icmp eq i32 %count, 2
  br i1 %exitcond.not.1, label %for.body.1.for.end_crit_edge, label %for.body.2

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.2:                                       ; preds = %for.body.1
  %arrayidx.2 = getelementptr %struct.zd_ioreq32, ptr %ioreqs, i32 2
  %value.2 = getelementptr %struct.zd_ioreq32, ptr %ioreqs, i32 2, i32 1
  %19 = ptrtoint ptr %value.2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %value.2, align 4
  %shr.2 = lshr i32 %20, 16
  %conv.2 = trunc i32 %shr.2 to i16
  %arrayidx44.2 = getelementptr inbounds [14 x %struct.zd_ioreq16], ptr %ioreqs16, i32 0, i32 4
  %value45.2 = getelementptr inbounds [14 x %struct.zd_ioreq16], ptr %ioreqs16, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %value45.2 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv.2, ptr %value45.2, align 2
  %22 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx.2, align 4
  %24 = and i16 %23, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -28672, i16 %24)
  %cmp.i.2 = icmp eq i16 %24, -28672
  %a.0.v.i.2 = select i1 %cmp.i.2, i16 2, i16 1
  %a.0.i.2 = add i16 %a.0.v.i.2, %23
  %25 = ptrtoint ptr %arrayidx44.2 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %a.0.i.2, ptr %arrayidx44.2, align 2
  %conv52.2 = trunc i32 %20 to i16
  %arrayidx53.2 = getelementptr inbounds [14 x %struct.zd_ioreq16], ptr %ioreqs16, i32 0, i32 5
  %value54.2 = getelementptr inbounds [14 x %struct.zd_ioreq16], ptr %ioreqs16, i32 0, i32 5, i32 1
  %26 = ptrtoint ptr %value54.2 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv52.2, ptr %value54.2, align 2
  %27 = ptrtoint ptr %arrayidx53.2 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %23, ptr %arrayidx53.2, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count)
  %exitcond.not.2 = icmp eq i32 %count, 3
  br i1 %exitcond.not.2, label %for.body.2.for.end_crit_edge, label %for.body.3

for.body.2.for.end_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.3:                                       ; preds = %for.body.2
  %arrayidx.3 = getelementptr %struct.zd_ioreq32, ptr %ioreqs, i32 3
  %value.3 = getelementptr %struct.zd_ioreq32, ptr %ioreqs, i32 3, i32 1
  %28 = ptrtoint ptr %value.3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %value.3, align 4
  %shr.3 = lshr i32 %29, 16
  %conv.3 = trunc i32 %shr.3 to i16
  %arrayidx44.3 = getelementptr inbounds [14 x %struct.zd_ioreq16], ptr %ioreqs16, i32 0, i32 6
  %value45.3 = getelementptr inbounds [14 x %struct.zd_ioreq16], ptr %ioreqs16, i32 0, i32 6, i32 1
  %30 = ptrtoint ptr %value45.3 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv.3, ptr %value45.3, align 2
  %31 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx.3, align 4
  %33 = and i16 %32, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -28672, i16 %33)
  %cmp.i.3 = icmp eq i16 %33, -28672
  %a.0.v.i.3 = select i1 %cmp.i.3, i16 2, i16 1
  %a.0.i.3 = add i16 %a.0.v.i.3, %32
  %34 = ptrtoint ptr %arrayidx44.3 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %a.0.i.3, ptr %arrayidx44.3, align 2
  %conv52.3 = trunc i32 %29 to i16
  %arrayidx53.3 = getelementptr inbounds [14 x %struct.zd_ioreq16], ptr %ioreqs16, i32 0, i32 7
  %value54.3 = getelementptr inbounds [14 x %struct.zd_ioreq16], ptr %ioreqs16, i32 0, i32 7, i32 1
  %35 = ptrtoint ptr %value54.3 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv52.3, ptr %value54.3, align 2
  %36 = ptrtoint ptr %arrayidx53.3 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %32, ptr %arrayidx53.3, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %count)
  %exitcond.not.3 = icmp eq i32 %count, 4
  br i1 %exitcond.not.3, label %for.body.3.for.end_crit_edge, label %for.body.4

for.body.3.for.end_crit_edge:                     ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.4:                                       ; preds = %for.body.3
  %arrayidx.4 = getelementptr %struct.zd_ioreq32, ptr %ioreqs, i32 4
  %value.4 = getelementptr %struct.zd_ioreq32, ptr %ioreqs, i32 4, i32 1
  %37 = ptrtoint ptr %value.4 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %value.4, align 4
  %shr.4 = lshr i32 %38, 16
  %conv.4 = trunc i32 %shr.4 to i16
  %arrayidx44.4 = getelementptr inbounds [14 x %struct.zd_ioreq16], ptr %ioreqs16, i32 0, i32 8
  %value45.4 = getelementptr inbounds [14 x %struct.zd_ioreq16], ptr %ioreqs16, i32 0, i32 8, i32 1
  %39 = ptrtoint ptr %value45.4 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv.4, ptr %value45.4, align 2
  %40 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx.4, align 4
  %42 = and i16 %41, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -28672, i16 %42)
  %cmp.i.4 = icmp eq i16 %42, -28672
  %a.0.v.i.4 = select i1 %cmp.i.4, i16 2, i16 1
  %a.0.i.4 = add i16 %a.0.v.i.4, %41
  %43 = ptrtoint ptr %arrayidx44.4 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %a.0.i.4, ptr %arrayidx44.4, align 2
  %conv52.4 = trunc i32 %38 to i16
  %arrayidx53.4 = getelementptr inbounds [14 x %struct.zd_ioreq16], ptr %ioreqs16, i32 0, i32 9
  %value54.4 = getelementptr inbounds [14 x %struct.zd_ioreq16], ptr %ioreqs16, i32 0, i32 9, i32 1
  %44 = ptrtoint ptr %value54.4 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv52.4, ptr %value54.4, align 2
  %45 = ptrtoint ptr %arrayidx53.4 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %41, ptr %arrayidx53.4, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %count)
  %exitcond.not.4 = icmp eq i32 %count, 5
  br i1 %exitcond.not.4, label %for.body.4.for.end_crit_edge, label %for.body.5

for.body.4.for.end_crit_edge:                     ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.5:                                       ; preds = %for.body.4
  %arrayidx.5 = getelementptr %struct.zd_ioreq32, ptr %ioreqs, i32 5
  %value.5 = getelementptr %struct.zd_ioreq32, ptr %ioreqs, i32 5, i32 1
  %46 = ptrtoint ptr %value.5 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %value.5, align 4
  %shr.5 = lshr i32 %47, 16
  %conv.5 = trunc i32 %shr.5 to i16
  %arrayidx44.5 = getelementptr inbounds [14 x %struct.zd_ioreq16], ptr %ioreqs16, i32 0, i32 10
  %value45.5 = getelementptr inbounds [14 x %struct.zd_ioreq16], ptr %ioreqs16, i32 0, i32 10, i32 1
  %48 = ptrtoint ptr %value45.5 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv.5, ptr %value45.5, align 2
  %49 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %arrayidx.5, align 4
  %51 = and i16 %50, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -28672, i16 %51)
  %cmp.i.5 = icmp eq i16 %51, -28672
  %a.0.v.i.5 = select i1 %cmp.i.5, i16 2, i16 1
  %a.0.i.5 = add i16 %a.0.v.i.5, %50
  %52 = ptrtoint ptr %arrayidx44.5 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %a.0.i.5, ptr %arrayidx44.5, align 2
  %conv52.5 = trunc i32 %47 to i16
  %arrayidx53.5 = getelementptr inbounds [14 x %struct.zd_ioreq16], ptr %ioreqs16, i32 0, i32 11
  %value54.5 = getelementptr inbounds [14 x %struct.zd_ioreq16], ptr %ioreqs16, i32 0, i32 11, i32 1
  %53 = ptrtoint ptr %value54.5 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv52.5, ptr %value54.5, align 2
  %54 = ptrtoint ptr %arrayidx53.5 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %50, ptr %arrayidx53.5, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %count)
  %exitcond.not.5 = icmp eq i32 %count, 6
  br i1 %exitcond.not.5, label %for.body.5.for.end_crit_edge, label %for.body.6

for.body.5.for.end_crit_edge:                     ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.6:                                       ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.6 = getelementptr %struct.zd_ioreq32, ptr %ioreqs, i32 6
  %value.6 = getelementptr %struct.zd_ioreq32, ptr %ioreqs, i32 6, i32 1
  %55 = ptrtoint ptr %value.6 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %value.6, align 4
  %shr.6 = lshr i32 %56, 16
  %conv.6 = trunc i32 %shr.6 to i16
  %arrayidx44.6 = getelementptr inbounds [14 x %struct.zd_ioreq16], ptr %ioreqs16, i32 0, i32 12
  %value45.6 = getelementptr inbounds [14 x %struct.zd_ioreq16], ptr %ioreqs16, i32 0, i32 12, i32 1
  %57 = ptrtoint ptr %value45.6 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv.6, ptr %value45.6, align 2
  %58 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %arrayidx.6, align 4
  %60 = and i16 %59, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -28672, i16 %60)
  %cmp.i.6 = icmp eq i16 %60, -28672
  %a.0.v.i.6 = select i1 %cmp.i.6, i16 2, i16 1
  %a.0.i.6 = add i16 %a.0.v.i.6, %59
  %61 = ptrtoint ptr %arrayidx44.6 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %a.0.i.6, ptr %arrayidx44.6, align 2
  %conv52.6 = trunc i32 %56 to i16
  %arrayidx53.6 = getelementptr inbounds [14 x %struct.zd_ioreq16], ptr %ioreqs16, i32 0, i32 13
  %value54.6 = getelementptr inbounds [14 x %struct.zd_ioreq16], ptr %ioreqs16, i32 0, i32 13, i32 1
  %62 = ptrtoint ptr %value54.6 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv52.6, ptr %value54.6, align 2
  %63 = ptrtoint ptr %arrayidx53.6 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %59, ptr %arrayidx53.6, align 2
  br label %for.end

for.end:                                          ; preds = %for.body.6, %for.body.5.for.end_crit_edge, %for.body.4.for.end_crit_edge, %for.body.3.for.end_crit_edge, %for.body.2.for.end_crit_edge, %for.body.1.for.end_crit_edge, %for.body.preheader.for.end_crit_edge
  %call60 = call i32 @zd_usb_iowrite16v_async(ptr noundef %chip, ptr noundef nonnull %ioreqs16, i32 noundef %mul) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %for.end.cleanup_crit_edge, label %do.end65

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end65:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %intf = getelementptr inbounds %struct.zd_usb, ptr %chip, i32 0, i32 3
  %64 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %65, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.38, i32 noundef %call60) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end65, %for.end.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %do.end17.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end17.cleanup_crit_edge ], [ -22, %if.end19.cleanup_crit_edge ], [ %call60, %do.end65 ], [ 0, %for.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %ioreqs16) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zd_usb_iowrite16v_async_end(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zd_iowrite16a_locked(ptr noundef %chip, ptr noundef %ioreqs, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 2
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %mutex) #8
  br i1 %call, label %entry.do.end17_crit_edge, label %do.body3, !prof !275

entry.do.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end17

do.body3:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd_iowrite16a_locked.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@zd_iowrite16a_locked, %do.end)) #8
          to label %if.then14 [label %do.end], !srcloc !274

if.then14:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zd_iowrite16a_locked.__UNIQUE_ID_ddebug359, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i32 noundef 190, ptr noundef nonnull @.str.11) #8
  br label %do.end

do.end:                                           ; preds = %if.then14, %do.body3
  tail call void @dump_stack() #11
  br label %do.end17

do.end17:                                         ; preds = %do.end, %entry.do.end17_crit_edge
  tail call void @zd_usb_iowrite16v_async_start(ptr noundef %chip) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp73.not = icmp eq i32 %count, 0
  br i1 %cmp73.not, label %do.end17.for.end42_crit_edge, label %do.end17.for.body_crit_edge

do.end17.for.body_crit_edge:                      ; preds = %do.end17
  br label %for.body

do.end17.for.end42_crit_edge:                     ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end42

for.body:                                         ; preds = %for.inc39.for.body_crit_edge, %do.end17.for.body_crit_edge
  %i.074 = phi i32 [ %add41, %for.inc39.for.body_crit_edge ], [ 0, %do.end17.for.body_crit_edge ]
  %sub = sub i32 %count, %i.074
  %0 = tail call i32 @llvm.umin.i32(i32 %sub, i32 15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp2268.not = icmp eq i32 %0, 0
  br i1 %cmp2268.not, label %for.body.for.end_crit_edge, label %for.body.for.body23_crit_edge

for.body.for.body23_crit_edge:                    ; preds = %for.body
  br label %for.body23

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body23:                                       ; preds = %for.inc.for.body23_crit_edge, %for.body.for.body23_crit_edge
  %j.069 = phi i32 [ %inc, %for.inc.for.body23_crit_edge ], [ 0, %for.body.for.body23_crit_edge ]
  %add = add i32 %j.069, %i.074
  %arrayidx = getelementptr %struct.zd_ioreq16, ptr %ioreqs, i32 %add
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool24.not = icmp eq i16 %2, 0
  br i1 %tobool24.not, label %for.body23.for.end_crit_edge, label %for.inc

for.body23.for.end_crit_edge:                     ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc:                                          ; preds = %for.body23
  %inc = add nuw nsw i32 %j.069, 1
  %exitcond.not = icmp eq i32 %inc, %0
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body23_crit_edge

for.inc.for.body23_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body23

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body23.for.end_crit_edge, %for.body.for.end_crit_edge
  %j.0.lcssa = phi i32 [ 0, %for.body.for.end_crit_edge ], [ %j.069, %for.body23.for.end_crit_edge ], [ %0, %for.inc.for.end_crit_edge ]
  %t.0 = phi i32 [ 0, %for.body.for.end_crit_edge ], [ 1, %for.body23.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  %arrayidx28 = getelementptr %struct.zd_ioreq16, ptr %ioreqs, i32 %i.074
  %call29 = tail call i32 @zd_usb_iowrite16v_async(ptr noundef %chip, ptr noundef %arrayidx28, i32 noundef %j.0.lcssa) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %for.inc39, label %if.then31

if.then31:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %call33 = tail call i32 @zd_usb_iowrite16v_async_end(ptr noundef %chip, i32 noundef 0) #8
  %intf = getelementptr inbounds %struct.zd_usb, ptr %chip, i32 0, i32 3
  %3 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %4, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10, i32 noundef %call29) #11
  br label %cleanup

for.inc39:                                        ; preds = %for.end
  %add40 = add i32 %j.0.lcssa, %i.074
  %add41 = add i32 %add40, %t.0
  %cmp = icmp ult i32 %add41, %count
  br i1 %cmp, label %for.inc39.for.body_crit_edge, label %for.inc39.for.end42_crit_edge

for.inc39.for.end42_crit_edge:                    ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end42

for.inc39.for.body_crit_edge:                     ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end42:                                        ; preds = %for.inc39.for.end42_crit_edge, %do.end17.for.end42_crit_edge
  %call44 = tail call i32 @zd_usb_iowrite16v_async_end(ptr noundef %chip, i32 noundef 50) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end42, %if.then31
  %retval.0 = phi i32 [ %call29, %if.then31 ], [ %call44, %for.end42 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zd_usb_iowrite16v_async(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zd_iowrite32a_locked(ptr noundef %chip, ptr nocapture noundef readonly %ioreqs, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @zd_usb_iowrite16v_async_start(ptr noundef %chip) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp46.not = icmp eq i32 %count, 0
  br i1 %cmp46.not, label %entry.for.end17_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end17_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end17

for.body:                                         ; preds = %for.inc14.for.body_crit_edge, %entry.for.body_crit_edge
  %i.047 = phi i32 [ %add16, %for.inc14.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %sub = sub i32 %count, %i.047
  %0 = tail call i32 @llvm.umin.i32(i32 %sub, i32 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp341.not = icmp eq i32 %0, 0
  br i1 %cmp341.not, label %for.body.for.end_crit_edge, label %for.body4

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body4:                                        ; preds = %for.body
  %arrayidx = getelementptr %struct.zd_ioreq32, ptr %ioreqs, i32 %i.047
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %for.body4.for.end_crit_edge, label %for.inc

for.body4.for.end_crit_edge:                      ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc:                                          ; preds = %for.body4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %exitcond.not = icmp eq i32 %0, 1
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.body4.1

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body4.1:                                      ; preds = %for.inc
  %add.1 = add i32 %i.047, 1
  %arrayidx.1 = getelementptr %struct.zd_ioreq32, ptr %ioreqs, i32 %add.1
  %3 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not.1 = icmp eq i16 %4, 0
  br i1 %tobool.not.1, label %for.body4.1.for.end_crit_edge, label %for.inc.1

for.body4.1.for.end_crit_edge:                    ; preds = %for.body4.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.1:                                        ; preds = %for.body4.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %exitcond.not.1 = icmp eq i32 %0, 2
  br i1 %exitcond.not.1, label %for.inc.1.for.end_crit_edge, label %for.body4.2

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body4.2:                                      ; preds = %for.inc.1
  %add.2 = add i32 %i.047, 2
  %arrayidx.2 = getelementptr %struct.zd_ioreq32, ptr %ioreqs, i32 %add.2
  %5 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not.2 = icmp eq i16 %6, 0
  br i1 %tobool.not.2, label %for.body4.2.for.end_crit_edge, label %for.inc.2

for.body4.2.for.end_crit_edge:                    ; preds = %for.body4.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.2:                                        ; preds = %for.body4.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %0)
  %exitcond.not.2 = icmp eq i32 %0, 3
  br i1 %exitcond.not.2, label %for.inc.2.for.end_crit_edge, label %for.body4.3

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body4.3:                                      ; preds = %for.inc.2
  %add.3 = add i32 %i.047, 3
  %arrayidx.3 = getelementptr %struct.zd_ioreq32, ptr %ioreqs, i32 %add.3
  %7 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not.3 = icmp eq i16 %8, 0
  br i1 %tobool.not.3, label %for.body4.3.for.end_crit_edge, label %for.inc.3

for.body4.3.for.end_crit_edge:                    ; preds = %for.body4.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.3:                                        ; preds = %for.body4.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %0)
  %exitcond.not.3 = icmp eq i32 %0, 4
  br i1 %exitcond.not.3, label %for.inc.3.for.end_crit_edge, label %for.body4.4

for.inc.3.for.end_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body4.4:                                      ; preds = %for.inc.3
  %add.4 = add i32 %i.047, 4
  %arrayidx.4 = getelementptr %struct.zd_ioreq32, ptr %ioreqs, i32 %add.4
  %9 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx.4, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not.4 = icmp eq i16 %10, 0
  br i1 %tobool.not.4, label %for.body4.4.for.end_crit_edge, label %for.inc.4

for.body4.4.for.end_crit_edge:                    ; preds = %for.body4.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.4:                                        ; preds = %for.body4.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %0)
  %exitcond.not.4 = icmp eq i32 %0, 5
  br i1 %exitcond.not.4, label %for.inc.4.for.end_crit_edge, label %for.body4.5

for.inc.4.for.end_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body4.5:                                      ; preds = %for.inc.4
  %add.5 = add i32 %i.047, 5
  %arrayidx.5 = getelementptr %struct.zd_ioreq32, ptr %ioreqs, i32 %add.5
  %11 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx.5, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not.5 = icmp eq i16 %12, 0
  br i1 %tobool.not.5, label %for.body4.5.for.end_crit_edge, label %for.inc.5

for.body4.5.for.end_crit_edge:                    ; preds = %for.body4.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.5:                                        ; preds = %for.body4.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %0)
  %exitcond.not.5 = icmp eq i32 %0, 6
  br i1 %exitcond.not.5, label %for.inc.5.for.end_crit_edge, label %for.body4.6

for.inc.5.for.end_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body4.6:                                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  %add.6 = add i32 %i.047, 6
  %arrayidx.6 = getelementptr %struct.zd_ioreq32, ptr %ioreqs, i32 %add.6
  %13 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx.6, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool.not.6 = icmp eq i16 %14, 0
  %spec.select = select i1 %tobool.not.6, i32 6, i32 %0
  %spec.select53 = select i1 %tobool.not.6, i32 1, i32 0
  br label %for.end

for.end:                                          ; preds = %for.body4.6, %for.inc.5.for.end_crit_edge, %for.body4.5.for.end_crit_edge, %for.inc.4.for.end_crit_edge, %for.body4.4.for.end_crit_edge, %for.inc.3.for.end_crit_edge, %for.body4.3.for.end_crit_edge, %for.inc.2.for.end_crit_edge, %for.body4.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.body4.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %for.body4.for.end_crit_edge, %for.body.for.end_crit_edge
  %j.0.lcssa = phi i32 [ 0, %for.body.for.end_crit_edge ], [ 0, %for.body4.for.end_crit_edge ], [ %0, %for.inc.for.end_crit_edge ], [ 1, %for.body4.1.for.end_crit_edge ], [ %0, %for.inc.1.for.end_crit_edge ], [ 2, %for.body4.2.for.end_crit_edge ], [ %0, %for.inc.2.for.end_crit_edge ], [ 3, %for.body4.3.for.end_crit_edge ], [ %0, %for.inc.3.for.end_crit_edge ], [ 4, %for.body4.4.for.end_crit_edge ], [ %0, %for.inc.4.for.end_crit_edge ], [ 5, %for.body4.5.for.end_crit_edge ], [ %0, %for.inc.5.for.end_crit_edge ], [ %spec.select, %for.body4.6 ]
  %t.0 = phi i32 [ 0, %for.body.for.end_crit_edge ], [ 1, %for.body4.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ], [ 1, %for.body4.1.for.end_crit_edge ], [ 0, %for.inc.1.for.end_crit_edge ], [ 1, %for.body4.2.for.end_crit_edge ], [ 0, %for.inc.2.for.end_crit_edge ], [ 1, %for.body4.3.for.end_crit_edge ], [ 0, %for.inc.3.for.end_crit_edge ], [ 1, %for.body4.4.for.end_crit_edge ], [ 0, %for.inc.4.for.end_crit_edge ], [ 1, %for.body4.5.for.end_crit_edge ], [ 0, %for.inc.5.for.end_crit_edge ], [ %spec.select53, %for.body4.6 ]
  %arrayidx7 = getelementptr %struct.zd_ioreq32, ptr %ioreqs, i32 %i.047
  %call = tail call fastcc i32 @_zd_iowrite32v_async_locked(ptr noundef %chip, ptr noundef %arrayidx7, i32 noundef %j.0.lcssa)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %for.inc14, label %if.then9

if.then9:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %call11 = tail call i32 @zd_usb_iowrite16v_async_end(ptr noundef %chip, i32 noundef 0) #8
  %intf = getelementptr inbounds %struct.zd_usb, ptr %chip, i32 0, i32 3
  %15 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %16, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.14, i32 noundef %call) #11
  br label %cleanup

for.inc14:                                        ; preds = %for.end
  %add15 = add i32 %j.0.lcssa, %i.047
  %add16 = add i32 %add15, %t.0
  %cmp = icmp ult i32 %add16, %count
  br i1 %cmp, label %for.inc14.for.body_crit_edge, label %for.inc14.for.end17_crit_edge

for.inc14.for.end17_crit_edge:                    ; preds = %for.inc14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end17

for.inc14.for.body_crit_edge:                     ; preds = %for.inc14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end17:                                        ; preds = %for.inc14.for.end17_crit_edge, %entry.for.end17_crit_edge
  %call19 = tail call i32 @zd_usb_iowrite16v_async_end(ptr noundef %chip, i32 noundef 50) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end17, %if.then9
  %retval.0 = phi i32 [ %call, %if.then9 ], [ %call19, %for.end17 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zd_ioread16(ptr noundef %chip, i16 noundef zeroext %addr, ptr noundef %value) local_unnamed_addr #0 align 64 {
entry:
  %addr.addr.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %call.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mutex) #8
  br i1 %call.i, label %entry.zd_ioread16_locked.exit_crit_edge, label %do.body3.i, !prof !275

entry.zd_ioread16_locked.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %zd_ioread16_locked.exit

do.body3.i:                                       ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd_ioread16_locked.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@zd_ioread16, %do.end.i)) #8
          to label %if.then14.i [label %do.end.i], !srcloc !274

if.then14.i:                                      ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zd_ioread16_locked.__UNIQUE_ID_ddebug354, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.37, i32 noundef 807, ptr noundef nonnull @.str.11) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then14.i, %do.body3.i
  tail call void @dump_stack() #11
  br label %zd_ioread16_locked.exit

zd_ioread16_locked.exit:                          ; preds = %do.end.i, %entry.zd_ioread16_locked.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr.addr.i.i) #8
  %0 = ptrtoint ptr %addr.addr.i.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %addr, ptr %addr.addr.i.i, align 2
  %call.i.i = call i32 @zd_usb_ioread16v(ptr noundef %chip, ptr noundef %value, ptr noundef nonnull %addr.addr.i.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr.addr.i.i) #8
  call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zd_ioread32(ptr noundef %chip, i16 noundef zeroext %addr, ptr nocapture noundef writeonly %value) local_unnamed_addr #0 align 64 {
entry:
  %addr.addr.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr.addr.i)
  %0 = ptrtoint ptr %addr.addr.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %addr, ptr %addr.addr.i, align 2
  %call.i = call i32 @zd_ioread32v_locked(ptr noundef %chip, ptr noundef %value, ptr noundef nonnull %addr.addr.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr.addr.i)
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zd_iowrite16(ptr noundef %chip, i16 noundef zeroext %addr, i16 noundef zeroext %value) local_unnamed_addr #0 align 64 {
entry:
  %ioreq.i = alloca %struct.zd_ioreq16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ioreq.i) #8
  %call.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mutex) #8
  br i1 %call.i, label %entry.zd_iowrite16_locked.exit_crit_edge, label %do.body3.i, !prof !275

entry.zd_iowrite16_locked.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %zd_iowrite16_locked.exit

do.body3.i:                                       ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd_iowrite16_locked.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@zd_iowrite16, %do.end.i)) #8
          to label %if.then14.i [label %do.end.i], !srcloc !274

if.then14.i:                                      ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zd_iowrite16_locked.__UNIQUE_ID_ddebug355, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.37, i32 noundef 825, ptr noundef nonnull @.str.11) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then14.i, %do.body3.i
  tail call void @dump_stack() #11
  br label %zd_iowrite16_locked.exit

zd_iowrite16_locked.exit:                         ; preds = %do.end.i, %entry.zd_iowrite16_locked.exit_crit_edge
  %0 = getelementptr inbounds %struct.zd_ioreq16, ptr %ioreq.i, i32 0, i32 1
  %1 = ptrtoint ptr %ioreq.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %addr, ptr %ioreq.i, align 2
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %value, ptr %0, align 2
  %call20.i = call i32 @zd_usb_iowrite16v(ptr noundef %chip, ptr noundef nonnull %ioreq.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ioreq.i) #8
  call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 %call20.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @zd_iowrite16_locked(ptr noundef %chip, i16 noundef zeroext %value, i16 noundef zeroext %addr) unnamed_addr #4 align 64 {
entry:
  %ioreq = alloca %struct.zd_ioreq16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ioreq) #8
  %mutex = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 2
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %mutex) #8
  br i1 %call, label %entry.do.end17_crit_edge, label %do.body3, !prof !275

entry.do.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end17

do.body3:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd_iowrite16_locked.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@zd_iowrite16_locked, %do.end)) #8
          to label %if.then14 [label %do.end], !srcloc !274

if.then14:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zd_iowrite16_locked.__UNIQUE_ID_ddebug355, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.37, i32 noundef 825, ptr noundef nonnull @.str.11) #8
  br label %do.end

do.end:                                           ; preds = %if.then14, %do.body3
  tail call void @dump_stack() #11
  br label %do.end17

do.end17:                                         ; preds = %do.end, %entry.do.end17_crit_edge
  %0 = getelementptr inbounds %struct.zd_ioreq16, ptr %ioreq, i32 0, i32 1
  %1 = ptrtoint ptr %ioreq to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %addr, ptr %ioreq, align 2
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %value, ptr %0, align 2
  %call20 = call i32 @zd_usb_iowrite16v(ptr noundef %chip, ptr noundef nonnull %ioreq, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ioreq) #8
  ret i32 %call20
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zd_iowrite32(ptr noundef %chip, i16 noundef zeroext %addr, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  %ioreq.i = alloca %struct.zd_ioreq32, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ioreq.i) #8
  %0 = ptrtoint ptr %ioreq.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %ioreq.i, align 8, !annotation !276
  store i16 %addr, ptr %ioreq.i, align 8
  %value2.i = getelementptr inbounds %struct.zd_ioreq32, ptr %ioreq.i, i32 0, i32 1
  %1 = ptrtoint ptr %value2.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %value, ptr %value2.i, align 4
  tail call void @zd_usb_iowrite16v_async_start(ptr noundef %chip) #8
  %call.i.i = call fastcc i32 @_zd_iowrite32v_async_locked(ptr noundef %chip, ptr noundef nonnull %ioreq.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i.i = tail call i32 @zd_usb_iowrite16v_async_end(ptr noundef %chip, i32 noundef 0) #8
  br label %zd_iowrite32_locked.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i.i = tail call i32 @zd_usb_iowrite16v_async_end(ptr noundef %chip, i32 noundef 50) #8
  br label %zd_iowrite32_locked.exit

zd_iowrite32_locked.exit:                         ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call4.i.i, %if.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ioreq.i) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 %retval.0.i.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @zd_iowrite32_locked(ptr noundef %chip, i32 noundef %value, i16 noundef zeroext %addr) unnamed_addr #4 align 64 {
entry:
  %ioreq = alloca %struct.zd_ioreq32, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ioreq) #8
  %0 = ptrtoint ptr %ioreq to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %ioreq, align 8, !annotation !276
  store i16 %addr, ptr %ioreq, align 8
  %value2 = getelementptr inbounds %struct.zd_ioreq32, ptr %ioreq, i32 0, i32 1
  %1 = ptrtoint ptr %value2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %value, ptr %value2, align 4
  tail call void @zd_usb_iowrite16v_async_start(ptr noundef %chip) #8
  %call.i = call fastcc i32 @_zd_iowrite32v_async_locked(ptr noundef %chip, ptr noundef nonnull %ioreq, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = tail call i32 @zd_usb_iowrite16v_async_end(ptr noundef %chip, i32 noundef 0) #8
  br label %_zd_iowrite32v_locked.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i = tail call i32 @zd_usb_iowrite16v_async_end(ptr noundef %chip, i32 noundef 50) #8
  br label %_zd_iowrite32v_locked.exit

_zd_iowrite32v_locked.exit:                       ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %call4.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ioreq) #8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zd_ioread32v(ptr noundef %chip, ptr nocapture noundef readonly %addresses, ptr nocapture noundef writeonly %values, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %call = tail call i32 @zd_ioread32v_locked(ptr noundef %chip, ptr noundef %values, ptr noundef %addresses, i32 noundef %count)
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zd_iowrite32a(ptr noundef %chip, ptr nocapture noundef readonly %ioreqs, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %call = tail call i32 @zd_iowrite32a_locked(ptr noundef %chip, ptr noundef %ioreqs, i32 noundef %count)
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zd_write_mac_addr(ptr noundef %chip, ptr noundef %mac_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @zd_write_mac_addr_common(ptr noundef %chip, ptr noundef %mac_addr, ptr noundef nonnull @zd_write_mac_addr.reqs, ptr noundef nonnull @.str.15)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @zd_write_mac_addr_common(ptr noundef %chip, ptr noundef %mac_addr, ptr nocapture noundef readonly %in_reqs, ptr noundef %type) unnamed_addr #0 align 64 {
entry:
  %reqs = alloca [2 x %struct.zd_ioreq32], align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %reqs) #8
  %0 = ptrtoint ptr %in_reqs to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %in_reqs, align 4
  %2 = ptrtoint ptr %reqs to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %reqs, align 8
  %arrayinit.element = getelementptr inbounds %struct.zd_ioreq32, ptr %reqs, i32 1
  %arrayidx1 = getelementptr %struct.zd_ioreq32, ptr %in_reqs, i32 1
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %4 = load i64, ptr %arrayidx1, align 4
  %5 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %arrayinit.element, align 8
  %tobool.not = icmp eq ptr %mac_addr, null
  br i1 %tobool.not, label %do.end24, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx2 = getelementptr i8, ptr %mac_addr, i32 3
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx2, align 1
  %conv = zext i8 %7 to i32
  %shl = shl nuw i32 %conv, 24
  %arrayidx3 = getelementptr i8, ptr %mac_addr, i32 2
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %9 to i32
  %shl5 = shl nuw nsw i32 %conv4, 16
  %or = or i32 %shl5, %shl
  %arrayidx6 = getelementptr i8, ptr %mac_addr, i32 1
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %11 to i32
  %shl8 = shl nuw nsw i32 %conv7, 8
  %or9 = or i32 %or, %shl8
  %12 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %mac_addr, align 1
  %conv11 = zext i8 %13 to i32
  %or12 = or i32 %or9, %conv11
  %value = getelementptr inbounds %struct.zd_ioreq32, ptr %reqs, i32 0, i32 1
  %14 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or12, ptr %value, align 4
  %arrayidx14 = getelementptr i8, ptr %mac_addr, i32 5
  %15 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %16 to i32
  %shl16 = shl nuw nsw i32 %conv15, 8
  %arrayidx17 = getelementptr i8, ptr %mac_addr, i32 4
  %17 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %18 to i32
  %or19 = or i32 %shl16, %conv18
  %value21 = getelementptr inbounds [2 x %struct.zd_ioreq32], ptr %reqs, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %value21 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or19, ptr %value21, align 4
  %intf = getelementptr inbounds %struct.zd_usb, ptr %chip, i32 0, i32 3
  %20 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %21, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, ptr noundef %type, ptr noundef nonnull %mac_addr) #11
  br label %if.end

do.end24:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %intf26 = getelementptr inbounds %struct.zd_usb, ptr %chip, i32 0, i32 3
  %22 = ptrtoint ptr %intf26 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %intf26, align 4
  %dev27 = getelementptr inbounds %struct.usb_interface, ptr %23, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev27, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.43, ptr noundef %type) #11
  br label %if.end

if.end:                                           ; preds = %do.end24, %if.then
  %mutex = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %call = call i32 @zd_iowrite32a_locked(ptr noundef %chip, ptr noundef nonnull %reqs, i32 noundef 2)
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %reqs) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zd_write_bssid(ptr noundef %chip, ptr noundef %bssid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @zd_write_mac_addr_common(ptr noundef %chip, ptr noundef %bssid, ptr noundef nonnull @zd_write_bssid.reqs, ptr noundef nonnull @.str.16)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zd_read_regdomain(ptr noundef %chip, ptr nocapture noundef writeonly %regdomain) local_unnamed_addr #0 align 64 {
entry:
  %addr.addr.i = alloca i16, align 2
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #8
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !276
  %mutex = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr.addr.i)
  %1 = ptrtoint ptr %addr.addr.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -2025, ptr %addr.addr.i, align 2
  %call.i = call i32 @zd_ioread32v_locked(ptr noundef %chip, ptr noundef nonnull %value, ptr noundef nonnull %addr.addr.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr.addr.i)
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 4
  %shr = lshr i32 %3, 16
  %conv = trunc i32 %shr to i8
  %4 = ptrtoint ptr %regdomain to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %regdomain, align 1
  %intf = getelementptr inbounds %struct.zd_usb, ptr %chip, i32 0, i32 3
  %5 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %6, i32 0, i32 7
  %conv2 = and i32 %shr, 255
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %conv2) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #8
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zd_chip_lock_phy_regs(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  %ioreq.i = alloca %struct.zd_ioreq32, align 8
  %addr.addr.i = alloca i16, align 2
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #8
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp, align 4, !annotation !276
  %mutex = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 2
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %mutex) #8
  br i1 %call, label %entry.do.end18_crit_edge, label %do.body3, !prof !275

entry.do.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

do.body3:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd_chip_lock_phy_regs.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@zd_chip_lock_phy_regs, %do.end)) #8
          to label %if.then15 [label %do.end], !srcloc !274

if.then15:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zd_chip_lock_phy_regs.__UNIQUE_ID_ddebug362, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i32 noundef 510, ptr noundef nonnull @.str.11) #8
  br label %do.end

do.end:                                           ; preds = %if.then15, %do.body3
  tail call void @dump_stack() #11
  br label %do.end18

do.end18:                                         ; preds = %do.end, %entry.do.end18_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr.addr.i)
  %1 = ptrtoint ptr %addr.addr.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -27008, ptr %addr.addr.i, align 2
  %call.i = call i32 @zd_ioread32v_locked(ptr noundef %chip, ptr noundef nonnull %tmp, ptr noundef nonnull %addr.addr.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool20.not = icmp eq i32 %call.i, 0
  br i1 %tobool20.not, label %if.end25, label %do.end24

do.end24:                                         ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #10
  %intf = getelementptr inbounds %struct.zd_usb, ptr %chip, i32 0, i32 3
  %2 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %call.i) #11
  br label %cleanup

if.end25:                                         ; preds = %do.end18
  %4 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tmp, align 4
  %and = and i32 %5, -129
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ioreq.i) #8
  %6 = ptrtoint ptr %ioreq.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -7601794696024686593, ptr %ioreq.i, align 8, !annotation !276
  %value2.i = getelementptr inbounds %struct.zd_ioreq32, ptr %ioreq.i, i32 0, i32 1
  %7 = ptrtoint ptr %value2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and, ptr %value2.i, align 4
  tail call void @zd_usb_iowrite16v_async_start(ptr noundef %chip) #8
  %call.i.i = call fastcc i32 @_zd_iowrite32v_async_locked(ptr noundef %chip, ptr noundef nonnull %ioreq.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %zd_iowrite32_locked.exit, label %zd_iowrite32_locked.exit.thread

zd_iowrite32_locked.exit.thread:                  ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i.i = tail call i32 @zd_usb_iowrite16v_async_end(ptr noundef %chip, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ioreq.i) #8
  br label %do.end31

zd_iowrite32_locked.exit:                         ; preds = %if.end25
  %call4.i.i = tail call i32 @zd_usb_iowrite16v_async_end(ptr noundef %chip, i32 noundef 50) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ioreq.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool27.not = icmp eq i32 %call4.i.i, 0
  br i1 %tobool27.not, label %zd_iowrite32_locked.exit.cleanup_crit_edge, label %zd_iowrite32_locked.exit.do.end31_crit_edge

zd_iowrite32_locked.exit.do.end31_crit_edge:      ; preds = %zd_iowrite32_locked.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end31

zd_iowrite32_locked.exit.cleanup_crit_edge:       ; preds = %zd_iowrite32_locked.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end31:                                         ; preds = %zd_iowrite32_locked.exit.do.end31_crit_edge, %zd_iowrite32_locked.exit.thread
  %retval.0.i.i49 = phi i32 [ %call.i.i, %zd_iowrite32_locked.exit.thread ], [ %call4.i.i, %zd_iowrite32_locked.exit.do.end31_crit_edge ]
  %intf33 = getelementptr inbounds %struct.zd_usb, ptr %chip, i32 0, i32 3
  %8 = ptrtoint ptr %intf33 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %intf33, align 4
  %dev34 = getelementptr inbounds %struct.usb_interface, ptr %9, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev34, ptr noundef nonnull @.str.23, i32 noundef %retval.0.i.i49) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end31, %zd_iowrite32_locked.exit.cleanup_crit_edge, %do.end24
  %retval.0 = phi i32 [ %call.i, %do.end24 ], [ %retval.0.i.i49, %do.end31 ], [ 0, %zd_iowrite32_locked.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #8
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zd_chip_unlock_phy_regs(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  %ioreq.i = alloca %struct.zd_ioreq32, align 8
  %addr.addr.i = alloca i16, align 2
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #8
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp, align 4, !annotation !276
  %mutex = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 2
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %mutex) #8
  br i1 %call, label %entry.do.end18_crit_edge, label %do.body3, !prof !275

entry.do.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

do.body3:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd_chip_unlock_phy_regs.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@zd_chip_unlock_phy_regs, %do.end)) #8
          to label %if.then15 [label %do.end], !srcloc !274

if.then15:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zd_chip_unlock_phy_regs.__UNIQUE_ID_ddebug363, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i32 noundef 530, ptr noundef nonnull @.str.11) #8
  br label %do.end

do.end:                                           ; preds = %if.then15, %do.body3
  tail call void @dump_stack() #11
  br label %do.end18

do.end18:                                         ; preds = %do.end, %entry.do.end18_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr.addr.i)
  %1 = ptrtoint ptr %addr.addr.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -27008, ptr %addr.addr.i, align 2
  %call.i = call i32 @zd_ioread32v_locked(ptr noundef %chip, ptr noundef nonnull %tmp, ptr noundef nonnull %addr.addr.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool20.not = icmp eq i32 %call.i, 0
  br i1 %tobool20.not, label %if.end25, label %do.end24

do.end24:                                         ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #10
  %intf = getelementptr inbounds %struct.zd_usb, ptr %chip, i32 0, i32 3
  %2 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %call.i) #11
  br label %cleanup

if.end25:                                         ; preds = %do.end18
  %4 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tmp, align 4
  %or = or i32 %5, 128
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ioreq.i) #8
  %6 = ptrtoint ptr %ioreq.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -7601794696024686593, ptr %ioreq.i, align 8, !annotation !276
  %value2.i = getelementptr inbounds %struct.zd_ioreq32, ptr %ioreq.i, i32 0, i32 1
  %7 = ptrtoint ptr %value2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or, ptr %value2.i, align 4
  tail call void @zd_usb_iowrite16v_async_start(ptr noundef %chip) #8
  %call.i.i = call fastcc i32 @_zd_iowrite32v_async_locked(ptr noundef %chip, ptr noundef nonnull %ioreq.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %zd_iowrite32_locked.exit, label %zd_iowrite32_locked.exit.thread

zd_iowrite32_locked.exit.thread:                  ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i.i = tail call i32 @zd_usb_iowrite16v_async_end(ptr noundef %chip, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ioreq.i) #8
  br label %do.end31

zd_iowrite32_locked.exit:                         ; preds = %if.end25
  %call4.i.i = tail call i32 @zd_usb_iowrite16v_async_end(ptr noundef %chip, i32 noundef 50) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ioreq.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool27.not = icmp eq i32 %call4.i.i, 0
  br i1 %tobool27.not, label %zd_iowrite32_locked.exit.cleanup_crit_edge, label %zd_iowrite32_locked.exit.do.end31_crit_edge

zd_iowrite32_locked.exit.do.end31_crit_edge:      ; preds = %zd_iowrite32_locked.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end31

zd_iowrite32_locked.exit.cleanup_crit_edge:       ; preds = %zd_iowrite32_locked.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end31:                                         ; preds = %zd_iowrite32_locked.exit.do.end31_crit_edge, %zd_iowrite32_locked.exit.thread
  %retval.0.i.i49 = phi i32 [ %call.i.i, %zd_iowrite32_locked.exit.thread ], [ %call4.i.i, %zd_iowrite32_locked.exit.do.end31_crit_edge ]
  %intf33 = getelementptr inbounds %struct.zd_usb, ptr %chip, i32 0, i32 3
  %8 = ptrtoint ptr %intf33 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %intf33, align 4
  %dev34 = getelementptr inbounds %struct.usb_interface, ptr %9, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev34, ptr noundef nonnull @.str.23, i32 noundef %retval.0.i.i49) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end31, %zd_iowrite32_locked.exit.cleanup_crit_edge, %do.end24
  %retval.0 = phi i32 [ %call.i, %do.end24 ], [ %retval.0.i.i49, %do.end31 ], [ 0, %zd_iowrite32_locked.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zd_chip_generic_patch_6m_band(ptr noundef %chip, i32 noundef %channel) local_unnamed_addr #0 align 64 {
entry:
  %ioreqs = alloca [4 x %struct.zd_ioreq16], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ioreqs) #8
  %0 = call ptr @memcpy(ptr %ioreqs, ptr @__const.zd_chip_generic_patch_6m_band.ioreqs, i32 16)
  %1 = zext i32 %channel to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %channel, label %entry.do.end_crit_edge [
    i32 1, label %entry.if.then_crit_edge
    i32 11, label %entry.if.then_crit_edge5
  ]

entry.if.then_crit_edge5:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge5
  %value = getelementptr inbounds %struct.zd_ioreq16, ptr %ioreqs, i32 0, i32 1
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 18, ptr %value, align 2
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %intf = getelementptr inbounds %struct.zd_usb, ptr %chip, i32 0, i32 3
  %3 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %4, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef %channel) #11
  %call = call i32 @zd_iowrite16a_locked(ptr noundef %chip, ptr noundef nonnull %ioreqs, i32 noundef 4)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ioreqs) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zd_set_beacon_interval(ptr noundef %chip, i16 noundef zeroext %interval, i8 noundef zeroext %dtim_period, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %call = tail call fastcc i32 @set_beacon_interval(ptr noundef %chip, i16 noundef zeroext %interval, i8 noundef zeroext %dtim_period, i32 noundef %type)
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_beacon_interval(ptr noundef %chip, i16 noundef zeroext %interval, i8 noundef zeroext %dtim_period, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  %reqs.i = alloca [3 x %struct.zd_ioreq32], align 4
  %values.i = alloca [3 x i32], align 4
  %ioreq.i = alloca %struct.zd_ioreq32, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 2
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %mutex) #8
  br i1 %call, label %entry.do.end17_crit_edge, label %do.body3, !prof !275

entry.do.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end17

do.body3:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_beacon_interval.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@set_beacon_interval, %do.end)) #8
          to label %if.then14 [label %do.end], !srcloc !274

if.then14:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @set_beacon_interval.__UNIQUE_ID_ddebug368, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i32 noundef 888, ptr noundef nonnull @.str.11) #8
  br label %do.end

do.end:                                           ; preds = %if.then14, %do.body3
  tail call void @dump_stack() #11
  br label %do.end17

do.end17:                                         ; preds = %do.end, %entry.do.end17_crit_edge
  %conv = zext i16 %interval to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %interval)
  %cmp.not = icmp eq i16 %interval, 0
  br i1 %cmp.not, label %do.end17.if.end21_crit_edge, label %if.then19

do.end17.if.end21_crit_edge:                      ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then19:                                        ; preds = %do.end17
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %type, label %sw.default [
    i32 1, label %if.then19.if.end21_crit_edge
    i32 7, label %if.then19.if.end21_crit_edge60
    i32 3, label %sw.bb20
  ]

if.then19.if.end21_crit_edge60:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then19.if.end21_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

sw.bb20:                                          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

sw.default:                                       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.end21:                                         ; preds = %sw.default, %sw.bb20, %if.then19.if.end21_crit_edge, %if.then19.if.end21_crit_edge60, %do.end17.if.end21_crit_edge
  %mode_flag.0 = phi i32 [ 0, %sw.default ], [ 16777216, %sw.bb20 ], [ 33554432, %if.then19.if.end21_crit_edge ], [ 33554432, %if.then19.if.end21_crit_edge60 ], [ 0, %do.end17.if.end21_crit_edge ]
  %dtim_period.addr.0 = phi i8 [ %dtim_period, %sw.default ], [ %dtim_period, %sw.bb20 ], [ %dtim_period, %if.then19.if.end21_crit_edge ], [ %dtim_period, %if.then19.if.end21_crit_edge60 ], [ 0, %do.end17.if.end21_crit_edge ]
  %conv22 = zext i8 %dtim_period.addr.0 to i32
  %shl = shl nuw nsw i32 %conv22, 16
  %or = or i32 %shl, %mode_flag.0
  %or24 = or i32 %or, %conv
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ioreq.i) #8
  %1 = ptrtoint ptr %ioreq.i to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -7700873887826837505, ptr %ioreq.i, align 8, !annotation !276
  %value2.i = getelementptr inbounds %struct.zd_ioreq32, ptr %ioreq.i, i32 0, i32 1
  %2 = ptrtoint ptr %value2.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or24, ptr %value2.i, align 4
  tail call void @zd_usb_iowrite16v_async_start(ptr noundef %chip) #8
  %call.i.i = call fastcc i32 @_zd_iowrite32v_async_locked(ptr noundef %chip, ptr noundef nonnull %ioreq.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %zd_iowrite32_locked.exit, label %zd_iowrite32_locked.exit.thread

zd_iowrite32_locked.exit.thread:                  ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i.i = tail call i32 @zd_usb_iowrite16v_async_end(ptr noundef %chip, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ioreq.i) #8
  br label %cleanup

zd_iowrite32_locked.exit:                         ; preds = %if.end21
  %call4.i.i = tail call i32 @zd_usb_iowrite16v_async_end(ptr noundef %chip, i32 noundef 50) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ioreq.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool26.not = icmp eq i32 %call4.i.i, 0
  br i1 %tobool26.not, label %if.end28, label %zd_iowrite32_locked.exit.cleanup_crit_edge

zd_iowrite32_locked.exit.cleanup_crit_edge:       ; preds = %zd_iowrite32_locked.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end28:                                         ; preds = %zd_iowrite32_locked.exit
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %values.i) #8
  %3 = ptrtoint ptr %values.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %values.i, align 4, !annotation !276
  %4 = getelementptr inbounds [3 x i32], ptr %values.i, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !276
  %6 = getelementptr inbounds [3 x i32], ptr %values.i, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4, !annotation !276
  %call.i = call i32 @zd_ioread32v_locked(ptr noundef %chip, ptr noundef nonnull %values.i, ptr noundef nonnull @get_aw_pt_bi.aw_pt_bi_addr, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end32, label %get_aw_pt_bi.exit

get_aw_pt_bi.exit:                                ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %values.i) #8
  br label %cleanup

if.end32:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %values.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %values.i, align 4
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %4, align 4
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %6, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %values.i) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %reqs.i) #8
  %14 = call ptr @memset(ptr %reqs.i, i32 255, i32 20)
  %conv1.i = and i32 %13, 65534
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp3.i = icmp ugt i32 %11, 3
  %15 = and i32 %13, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %conv1.i)
  %cmp.inv.i = icmp ugt i32 %conv1.i, 5
  %conv6.i = select i1 %cmp.inv.i, i32 %15, i32 5
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv6.i)
  %cmp7.not.i = icmp ult i32 %11, %conv6.i
  %or.cond.i = select i1 %cmp3.i, i1 %cmp7.not.i, i1 false
  %sub.i = add nsw i32 %conv6.i, -1
  %spec.select = select i1 %or.cond.i, i32 %11, i32 %sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %spec.select)
  %cmp14.not.i = icmp ult i32 %9, %spec.select
  %sub18.i = add i32 %spec.select, -1
  %s.sroa.0.1 = select i1 %cmp14.not.i, i32 %9, i32 %sub18.i
  %16 = ptrtoint ptr %reqs.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -27364, ptr %reqs.i, align 4
  %value.i = getelementptr inbounds %struct.zd_ioreq32, ptr %reqs.i, i32 0, i32 1
  %17 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %s.sroa.0.1, ptr %value.i, align 4
  %arrayidx23.i = getelementptr inbounds [3 x %struct.zd_ioreq32], ptr %reqs.i, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 -27356, ptr %arrayidx23.i, align 4
  %value27.i = getelementptr inbounds [3 x %struct.zd_ioreq32], ptr %reqs.i, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %value27.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %spec.select, ptr %value27.i, align 4
  %arrayidx28.i = getelementptr inbounds [3 x %struct.zd_ioreq32], ptr %reqs.i, i32 0, i32 2
  %20 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 -27360, ptr %arrayidx28.i, align 4
  %and31.i = and i32 %13, -65536
  %or.i = or i32 %conv6.i, %and31.i
  %value34.i = getelementptr inbounds [3 x %struct.zd_ioreq32], ptr %reqs.i, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %value34.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or.i, ptr %value34.i, align 4
  %call.i46 = call i32 @zd_iowrite32a_locked(ptr noundef %chip, ptr noundef nonnull %reqs.i, i32 noundef 3) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %reqs.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %get_aw_pt_bi.exit, %zd_iowrite32_locked.exit.cleanup_crit_edge, %zd_iowrite32_locked.exit.thread
  %retval.0 = phi i32 [ %call.i46, %if.end32 ], [ %call4.i.i, %zd_iowrite32_locked.exit.cleanup_crit_edge ], [ %call.i, %get_aw_pt_bi.exit ], [ %call.i.i, %zd_iowrite32_locked.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zd_chip_set_rts_cts_rate_locked(ptr noundef %chip, i32 noundef %preamble) local_unnamed_addr #0 align 64 {
entry:
  %ioreq.i = alloca %struct.zd_ioreq32, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %intf = getelementptr inbounds %struct.zd_usb, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef %preamble) #11
  %shl = shl i32 %preamble, 9
  %shl1 = shl i32 %preamble, 25
  %or2 = or i32 %shl1, %shl
  %or5 = or i32 %or2, 196611
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ioreq.i) #8
  %2 = ptrtoint ptr %ioreq.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -7622060894347853825, ptr %ioreq.i, align 8, !annotation !276
  %value2.i = getelementptr inbounds %struct.zd_ioreq32, ptr %ioreq.i, i32 0, i32 1
  %3 = ptrtoint ptr %value2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or5, ptr %value2.i, align 4
  tail call void @zd_usb_iowrite16v_async_start(ptr noundef %chip) #8
  %call.i.i = call fastcc i32 @_zd_iowrite32v_async_locked(ptr noundef %chip, ptr noundef nonnull %ioreq.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i.i = tail call i32 @zd_usb_iowrite16v_async_end(ptr noundef %chip, i32 noundef 0) #8
  br label %zd_iowrite32_locked.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i.i = tail call i32 @zd_usb_iowrite16v_async_end(ptr noundef %chip, i32 noundef 50) #8
  br label %zd_iowrite32_locked.exit

zd_iowrite32_locked.exit:                         ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call4.i.i, %if.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ioreq.i) #8
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zd_chip_enable_hwint(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  %ioreq.i = alloca %struct.zd_ioreq32, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ioreq.i) #8
  %0 = ptrtoint ptr %ioreq.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -7705377491743997952, ptr %ioreq.i, align 8, !annotation !276
  tail call void @zd_usb_iowrite16v_async_start(ptr noundef %chip) #8
  %call.i.i = call fastcc i32 @_zd_iowrite32v_async_locked(ptr noundef %chip, ptr noundef nonnull %ioreq.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i.i = tail call i32 @zd_usb_iowrite16v_async_end(ptr noundef %chip, i32 noundef 0) #8
  br label %zd_iowrite32_locked.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i.i = tail call i32 @zd_usb_iowrite16v_async_end(ptr noundef %chip, i32 noundef 50) #8
  br label %zd_iowrite32_locked.exit

zd_iowrite32_locked.exit:                         ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call4.i.i, %if.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ioreq.i) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zd_chip_disable_hwint(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  %ioreq.i.i = alloca %struct.zd_ioreq32, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ioreq.i.i) #8
  %0 = ptrtoint ptr %ioreq.i.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -7705377491749175296, ptr %ioreq.i.i, align 8, !annotation !276
  tail call void @zd_usb_iowrite16v_async_start(ptr noundef %chip) #8
  %call.i.i.i = call fastcc i32 @_zd_iowrite32v_async_locked(ptr noundef %chip, ptr noundef nonnull %ioreq.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i.i.i = tail call i32 @zd_usb_iowrite16v_async_end(ptr noundef %chip, i32 noundef 0) #8
  br label %disable_hwint.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i.i.i = tail call i32 @zd_usb_iowrite16v_async_end(ptr noundef %chip, i32 noundef 50) #8
  br label %disable_hwint.exit

disable_hwint.exit:                               ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %if.then.i.i.i ], [ %call4.i.i.i, %if.end.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ioreq.i.i) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 %retval.0.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @disable_hwint(ptr noundef %chip) unnamed_addr #0 align 64 {
entry:
  %ioreq.i = alloca %struct.zd_ioreq32, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ioreq.i) #8
  %0 = ptrtoint ptr %ioreq.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -7705377491749175296, ptr %ioreq.i, align 8, !annotation !276
  tail call void @zd_usb_iowrite16v_async_start(ptr noundef %chip) #8
  %call.i.i = call fastcc i32 @_zd_iowrite32v_async_locked(ptr noundef %chip, ptr noundef nonnull %ioreq.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i.i = tail call i32 @zd_usb_iowrite16v_async_end(ptr noundef %chip, i32 noundef 0) #8
  br label %zd_iowrite32_locked.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i.i = tail call i32 @zd_usb_iowrite16v_async_end(ptr noundef %chip, i32 noundef 50) #8
  br label %zd_iowrite32_locked.exit

zd_iowrite32_locked.exit:                         ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call4.i.i, %if.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ioreq.i) #8
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zd_chip_read_mac_addr_fw(ptr noundef %chip, ptr noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %intf = getelementptr inbounds %struct.zd_usb, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33) #11
  %call = tail call i32 @zd_usb_read_fw(ptr noundef %chip, i16 noundef zeroext -2021, ptr noundef %addr, i16 noundef zeroext 6) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zd_usb_read_fw(ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zd_chip_init_hw(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  %ioreq.i80 = alloca %struct.zd_ioreq32, align 8
  %ioreq.i = alloca %struct.zd_ioreq32, align 8
  %rf_type = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rf_type) #8
  %0 = ptrtoint ptr %rf_type to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %rf_type, align 1, !annotation !276
  %intf = getelementptr inbounds %struct.zd_usb, ptr %chip, i32 0, i32 3
  %1 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %2, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.34) #11
  %mutex = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %call = tail call fastcc i32 @test_init(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ioreq.i) #8
  %3 = ptrtoint ptr %ioreq.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -7617557299015450623, ptr %ioreq.i, align 8, !annotation !276
  tail call void @zd_usb_iowrite16v_async_start(ptr noundef %chip) #8
  %call.i.i = call fastcc i32 @_zd_iowrite32v_async_locked(ptr noundef %chip, ptr noundef nonnull %ioreq.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %zd_iowrite32_locked.exit, label %zd_iowrite32_locked.exit.thread

zd_iowrite32_locked.exit.thread:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i.i = tail call i32 @zd_usb_iowrite16v_async_end(ptr noundef %chip, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ioreq.i) #8
  br label %out

zd_iowrite32_locked.exit:                         ; preds = %if.end
  %call4.i.i = tail call i32 @zd_usb_iowrite16v_async_end(ptr noundef %chip, i32 noundef 50) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ioreq.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool2.not = icmp eq i32 %call4.i.i, 0
  br i1 %tobool2.not, label %if.end4, label %zd_iowrite32_locked.exit.out_crit_edge

zd_iowrite32_locked.exit.out_crit_edge:           ; preds = %zd_iowrite32_locked.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end4:                                          ; preds = %zd_iowrite32_locked.exit
  %call5 = tail call fastcc i32 @read_fw_regs_offset(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.out_crit_edge

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end8:                                          ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ioreq.i80) #8
  %4 = ptrtoint ptr %ioreq.i80 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -7775183285973417984, ptr %ioreq.i80, align 8, !annotation !276
  tail call void @zd_usb_iowrite16v_async_start(ptr noundef %chip) #8
  %call.i.i82 = call fastcc i32 @_zd_iowrite32v_async_locked(ptr noundef %chip, ptr noundef nonnull %ioreq.i80, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i82)
  %tobool.not.i.i83 = icmp eq i32 %call.i.i82, 0
  br i1 %tobool.not.i.i83, label %zd_iowrite32_locked.exit89, label %zd_iowrite32_locked.exit89.thread

zd_iowrite32_locked.exit89.thread:                ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i.i84 = tail call i32 @zd_usb_iowrite16v_async_end(ptr noundef %chip, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ioreq.i80) #8
  br label %out

zd_iowrite32_locked.exit89:                       ; preds = %if.end8
  %call4.i.i86 = tail call i32 @zd_usb_iowrite16v_async_end(ptr noundef %chip, i32 noundef 50) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ioreq.i80) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i86)
  %tobool10.not = icmp eq i32 %call4.i.i86, 0
  br i1 %tobool10.not, label %if.end12, label %zd_iowrite32_locked.exit89.out_crit_edge

zd_iowrite32_locked.exit89.out_crit_edge:         ; preds = %zd_iowrite32_locked.exit89
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end12:                                         ; preds = %zd_iowrite32_locked.exit89
  %call13 = tail call fastcc i32 @zd_iowrite32_locked(ptr noundef %chip, i32 noundef 8324159, i16 noundef zeroext -26896)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.out_crit_edge

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end16:                                         ; preds = %if.end12
  %call17 = tail call fastcc i32 @set_mandatory_rates(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.out_crit_edge

if.end16.out_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end20:                                         ; preds = %if.end16
  %call21 = tail call fastcc i32 @disable_hwint(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.out_crit_edge

if.end20.out_crit_edge:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end24:                                         ; preds = %if.end20
  %call25 = call fastcc i32 @read_pod(ptr noundef %chip, ptr noundef nonnull %rf_type)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end24.out_crit_edge

if.end24.out_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end28:                                         ; preds = %if.end24
  %call29 = tail call fastcc i32 @hw_init(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end28.out_crit_edge

if.end28.out_crit_edge:                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end32:                                         ; preds = %if.end28
  %rf = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 1
  %5 = ptrtoint ptr %rf_type to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %rf_type, align 1
  %call33 = tail call i32 @zd_rf_init_hw(ptr noundef %rf, i8 noundef zeroext %6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end32.out_crit_edge

if.end32.out_crit_edge:                           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end36:                                         ; preds = %if.end32
  %call37 = tail call fastcc i32 @print_fw_version(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end36.out_crit_edge

if.end36.out_crit_edge:                           ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end40:                                         ; preds = %if.end36
  tail call fastcc void @dump_fw_registers(ptr noundef %chip)
  %call41 = tail call fastcc i32 @test_init(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %if.end40.out_crit_edge

if.end40.out_crit_edge:                           ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end44:                                         ; preds = %if.end40
  %call45 = tail call fastcc i32 @read_cal_int_tables(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.end44.out_crit_edge

if.end44.out_crit_edge:                           ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end48:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @print_id(ptr noundef %chip)
  br label %out

out:                                              ; preds = %if.end48, %if.end44.out_crit_edge, %if.end40.out_crit_edge, %if.end36.out_crit_edge, %if.end32.out_crit_edge, %if.end28.out_crit_edge, %if.end24.out_crit_edge, %if.end20.out_crit_edge, %if.end16.out_crit_edge, %if.end12.out_crit_edge, %zd_iowrite32_locked.exit89.out_crit_edge, %zd_iowrite32_locked.exit89.thread, %if.end4.out_crit_edge, %zd_iowrite32_locked.exit.out_crit_edge, %zd_iowrite32_locked.exit.thread, %entry.out_crit_edge
  %r.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call4.i.i, %zd_iowrite32_locked.exit.out_crit_edge ], [ %call5, %if.end4.out_crit_edge ], [ %call4.i.i86, %zd_iowrite32_locked.exit89.out_crit_edge ], [ %call13, %if.end12.out_crit_edge ], [ %call17, %if.end16.out_crit_edge ], [ %call21, %if.end20.out_crit_edge ], [ %call25, %if.end24.out_crit_edge ], [ %call29, %if.end28.out_crit_edge ], [ %call33, %if.end32.out_crit_edge ], [ %call37, %if.end36.out_crit_edge ], [ %call41, %if.end40.out_crit_edge ], [ %call45, %if.end44.out_crit_edge ], [ 0, %if.end48 ], [ %call.i.i, %zd_iowrite32_locked.exit.thread ], [ %call.i.i82, %zd_iowrite32_locked.exit89.thread ]
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rf_type) #8
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_init(ptr noundef %chip) unnamed_addr #0 align 64 {
entry:
  %addr.addr.i.i20 = alloca i16, align 2
  %value.i21 = alloca i32, align 4
  %addr.addr.i.i11 = alloca i16, align 2
  %value.i12 = alloca i32, align 4
  %addr.addr.i.i = alloca i16, align 2
  %value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #8
  %0 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value.i, align 4, !annotation !276
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr.addr.i.i) #8
  %1 = ptrtoint ptr %addr.addr.i.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -27064, ptr %addr.addr.i.i, align 2
  %call.i.i = call i32 @zd_ioread32v_locked(ptr noundef %chip, ptr noundef nonnull %value.i, ptr noundef nonnull %addr.addr.i.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr.addr.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  %intf5.i = getelementptr inbounds %struct.zd_usb, ptr %chip, i32 0, i32 3
  %2 = ptrtoint ptr %intf5.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf5.i, align 4
  %dev6.i = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  br i1 %tobool.not.i, label %if.end, label %dump_cr.exit

dump_cr.exit:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev6.i, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.48, i32 noundef %call.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value.i, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev6.i, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.48, i32 noundef %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i12) #8
  %6 = ptrtoint ptr %value.i12 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %value.i12, align 4, !annotation !276
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr.addr.i.i11) #8
  %7 = ptrtoint ptr %addr.addr.i.i11 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -27624, ptr %addr.addr.i.i11, align 2
  %call.i.i13 = call i32 @zd_ioread32v_locked(ptr noundef %chip, ptr noundef nonnull %value.i12, ptr noundef nonnull %addr.addr.i.i11, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr.addr.i.i11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i13)
  %tobool.not.i14 = icmp eq i32 %call.i.i13, 0
  %8 = ptrtoint ptr %intf5.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %intf5.i, align 4
  %dev6.i16 = getelementptr inbounds %struct.usb_interface, ptr %9, i32 0, i32 7
  br i1 %tobool.not.i14, label %if.end4, label %dump_cr.exit19

dump_cr.exit19:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev6.i16, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.49, i32 noundef %call.i.i13) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i12) #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %10 = ptrtoint ptr %value.i12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %value.i12, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev6.i16, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.49, i32 noundef %11) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i12) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i21) #8
  %12 = ptrtoint ptr %value.i21 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %value.i21, align 4, !annotation !276
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr.addr.i.i20) #8
  %13 = ptrtoint ptr %addr.addr.i.i20 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 -27376, ptr %addr.addr.i.i20, align 2
  %call.i.i22 = call i32 @zd_ioread32v_locked(ptr noundef %chip, ptr noundef nonnull %value.i21, ptr noundef nonnull %addr.addr.i.i20, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr.addr.i.i20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i22)
  %tobool.not.i23 = icmp eq i32 %call.i.i22, 0
  %14 = ptrtoint ptr %intf5.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %intf5.i, align 4
  %dev6.i25 = getelementptr inbounds %struct.usb_interface, ptr %15, i32 0, i32 7
  br i1 %tobool.not.i23, label %do.end3.i27, label %do.end.i26

do.end.i26:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev6.i25, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.50, i32 noundef %call.i.i22) #11
  br label %dump_cr.exit28

do.end3.i27:                                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %value.i21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %value.i21, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev6.i25, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.50, i32 noundef %17) #11
  br label %dump_cr.exit28

dump_cr.exit28:                                   ; preds = %do.end3.i27, %do.end.i26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i21) #8
  br label %cleanup

cleanup:                                          ; preds = %dump_cr.exit28, %dump_cr.exit19, %dump_cr.exit
  %retval.0 = phi i32 [ %call.i.i22, %dump_cr.exit28 ], [ %call.i.i, %dump_cr.exit ], [ %call.i.i13, %dump_cr.exit19 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_fw_regs_offset(ptr noundef %chip) unnamed_addr #0 align 64 {
entry:
  %addr.addr.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 2
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %mutex) #8
  br i1 %call, label %entry.do.end17_crit_edge, label %do.body3, !prof !275

entry.do.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end17

do.body3:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_fw_regs_offset.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@read_fw_regs_offset, %do.end)) #8
          to label %if.then14 [label %do.end], !srcloc !274

if.then14:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @read_fw_regs_offset.__UNIQUE_ID_ddebug371, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i32 noundef 1094, ptr noundef nonnull @.str.11) #8
  br label %do.end

do.end:                                           ; preds = %if.then14, %do.body3
  tail call void @dump_stack() #11
  br label %do.end17

do.end17:                                         ; preds = %do.end, %entry.do.end17_crit_edge
  %fw_regs_base = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 3
  %call.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mutex) #8
  br i1 %call.i, label %do.end17.zd_ioread16_locked.exit_crit_edge, label %do.body3.i, !prof !275

do.end17.zd_ioread16_locked.exit_crit_edge:       ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %zd_ioread16_locked.exit

do.body3.i:                                       ; preds = %do.end17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd_ioread16_locked.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@read_fw_regs_offset, %do.end.i)) #8
          to label %if.then14.i [label %do.end.i], !srcloc !274

if.then14.i:                                      ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zd_ioread16_locked.__UNIQUE_ID_ddebug354, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.37, i32 noundef 807, ptr noundef nonnull @.str.11) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then14.i, %do.body3.i
  tail call void @dump_stack() #11
  br label %zd_ioread16_locked.exit

zd_ioread16_locked.exit:                          ; preds = %do.end.i, %do.end17.zd_ioread16_locked.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr.addr.i.i) #8
  %0 = ptrtoint ptr %addr.addr.i.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -4579, ptr %addr.addr.i.i, align 2
  %call.i.i = call i32 @zd_usb_ioread16v(ptr noundef %chip, ptr noundef %fw_regs_base, ptr noundef nonnull %addr.addr.i.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr.addr.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool19.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool19.not, label %do.end24, label %zd_ioread16_locked.exit.cleanup_crit_edge

zd_ioread16_locked.exit.cleanup_crit_edge:        ; preds = %zd_ioread16_locked.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end24:                                         ; preds = %zd_ioread16_locked.exit
  call void @__sanitizer_cov_trace_pc() #10
  %intf = getelementptr inbounds %struct.zd_usb, ptr %chip, i32 0, i32 3
  %1 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %fw_regs_base to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %fw_regs_base, align 4
  %conv = zext i16 %4 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.56, i32 noundef %conv) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end24, %zd_ioread16_locked.exit.cleanup_crit_edge
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_mandatory_rates(ptr noundef %chip) unnamed_addr #0 align 64 {
entry:
  %ioreq.i = alloca %struct.zd_ioreq32, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 2
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %mutex) #8
  br i1 %call, label %entry.if.end20_crit_edge, label %do.body3, !prof !275

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

do.body3:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_mandatory_rates.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@set_mandatory_rates, %do.end)) #8
          to label %if.then14 [label %do.end], !srcloc !274

if.then14:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @set_mandatory_rates.__UNIQUE_ID_ddebug370, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i32 noundef 1033, ptr noundef nonnull @.str.11) #8
  br label %do.end

do.end:                                           ; preds = %if.then14, %do.body3
  tail call void @dump_stack() #11
  br label %if.end20

if.end20:                                         ; preds = %do.end, %entry.if.end20_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ioreq.i) #8
  %0 = ptrtoint ptr %ioreq.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -7623186798549658353, ptr %ioreq.i, align 8, !annotation !276
  tail call void @zd_usb_iowrite16v_async_start(ptr noundef %chip) #8
  %call.i.i = call fastcc i32 @_zd_iowrite32v_async_locked(ptr noundef %chip, ptr noundef nonnull %ioreq.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i.i = tail call i32 @zd_usb_iowrite16v_async_end(ptr noundef %chip, i32 noundef 0) #8
  br label %zd_iowrite32_locked.exit

if.end.i.i:                                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i.i = tail call i32 @zd_usb_iowrite16v_async_end(ptr noundef %chip, i32 noundef 50) #8
  br label %zd_iowrite32_locked.exit

zd_iowrite32_locked.exit:                         ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call4.i.i, %if.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ioreq.i) #8
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_pod(ptr noundef %chip, ptr nocapture noundef %rf_type) unnamed_addr #0 align 64 {
entry:
  %addr.addr.i = alloca i16, align 2
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #8
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !276
  %mutex = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 2
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %mutex) #8
  br i1 %call, label %entry.do.end17_crit_edge, label %do.body3, !prof !275

entry.do.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end17

do.body3:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_pod.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@read_pod, %do.end)) #8
          to label %if.then14 [label %do.end], !srcloc !274

if.then14:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @read_pod.__UNIQUE_ID_ddebug360, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i32 noundef 322, ptr noundef nonnull @.str.11) #8
  br label %do.end

do.end:                                           ; preds = %if.then14, %do.body3
  tail call void @dump_stack() #11
  br label %do.end17

do.end17:                                         ; preds = %do.end, %entry.do.end17_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr.addr.i)
  %1 = ptrtoint ptr %addr.addr.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -2023, ptr %addr.addr.i, align 2
  %call.i = call i32 @zd_ioread32v_locked(ptr noundef %chip, ptr noundef nonnull %value, ptr noundef nonnull %addr.addr.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool19.not = icmp eq i32 %call.i, 0
  br i1 %tobool19.not, label %do.end24, label %error

do.end24:                                         ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #10
  %intf = getelementptr inbounds %struct.zd_usb, ptr %chip, i32 0, i32 3
  %2 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.59, i32 noundef %5) #11
  %6 = trunc i32 %5 to i8
  %conv = and i8 %6, 15
  %7 = ptrtoint ptr %rf_type to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %rf_type, align 1
  %pa_type = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 8
  %8 = ptrtoint ptr %pa_type to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load = load i16, ptr %pa_type, align 2
  %sh.diff = lshr i32 %5, 4
  %tr.sh.diff = trunc i32 %sh.diff to i16
  %bf.shl = and i16 %tr.sh.diff, -4096
  %bf.clear = and i16 %bf.load, 63
  %9 = trunc i32 %5 to i16
  %10 = shl i16 %9, 3
  %bf.shl30 = and i16 %10, 2048
  %11 = lshr i16 %9, 3
  %bf.shl38 = and i16 %11, 1024
  %sh.diff173 = lshr i32 %5, 12
  %tr.sh.diff174 = trunc i32 %sh.diff173 to i16
  %bf.shl46 = and i16 %tr.sh.diff174, 512
  %sh.diff175 = lshr i32 %5, 23
  %tr.sh.diff176 = trunc i32 %sh.diff175 to i16
  %bf.shl54 = and i16 %tr.sh.diff176, 256
  %12 = and i16 %9, 128
  %bf.set = or i16 %bf.shl, %12
  %bf.set32 = or i16 %bf.set, %bf.shl30
  %bf.set40 = or i16 %bf.set32, %bf.shl38
  %bf.set48 = or i16 %bf.set40, %bf.shl46
  %bf.clear63 = or i16 %bf.set48, %bf.shl54
  %13 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool68.not = icmp eq i32 %13, 0
  %conv69 = select i1 %tobool68.not, i16 512, i16 256
  %link_led = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 7
  %14 = ptrtoint ptr %link_led to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv69, ptr %link_led, align 4
  %15 = and i32 %5, 553648128
  call void @__sanitizer_cov_trace_const_cmp4(i32 553648128, i32 %15)
  %.not = icmp eq i32 %15, 553648128
  %bf.clear71 = or i16 %bf.clear63, %bf.clear
  %masksel = select i1 %.not, i16 0, i16 64
  %spec.select = or i16 %bf.clear71, %masksel
  %16 = ptrtoint ptr %pa_type to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %spec.select, ptr %pa_type, align 2
  %17 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %intf, align 4
  %dev90 = getelementptr inbounds %struct.usb_interface, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %rf_type to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %rf_type, align 1
  %call91 = tail call ptr @zd_rf_name(i8 noundef zeroext %20) #8
  %21 = ptrtoint ptr %rf_type to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %rf_type, align 1
  %conv92 = zext i8 %22 to i32
  %23 = ptrtoint ptr %pa_type to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load94 = load i16, ptr %pa_type, align 2
  %bf.lshr = lshr i16 %bf.load94, 12
  %bf.cast = zext i16 %bf.lshr to i32
  %bf.lshr97 = lshr i16 %bf.load94, 11
  %bf.clear98 = and i16 %bf.lshr97, 1
  %bf.cast99 = zext i16 %bf.clear98 to i32
  %bf.lshr102 = lshr i16 %bf.load94, 10
  %bf.clear103 = and i16 %bf.lshr102, 1
  %bf.cast104 = zext i16 %bf.clear103 to i32
  %bf.lshr107 = lshr i16 %bf.load94, 9
  %bf.clear108 = and i16 %bf.lshr107, 1
  %bf.cast109 = zext i16 %bf.clear108 to i32
  %bf.lshr112 = lshr i16 %bf.load94, 8
  %bf.clear113 = and i16 %bf.lshr112, 1
  %bf.cast114 = zext i16 %bf.clear113 to i32
  %24 = ptrtoint ptr %link_led to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %link_led, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %25)
  %cmp = icmp eq i16 %25, 256
  %cond118 = select i1 %cmp, i32 1, i32 2
  %bf.lshr121 = lshr i16 %bf.load94, 6
  %bf.clear122 = and i16 %bf.lshr121, 1
  %bf.cast123 = zext i16 %bf.clear122 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev90, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.59, ptr noundef %call91, i32 noundef %conv92, i32 noundef %bf.cast, i32 noundef %bf.cast99, i32 noundef %bf.cast104, i32 noundef %bf.cast109, i32 noundef %bf.cast114, i32 noundef %cond118, i32 noundef %bf.cast123) #11
  br label %cleanup

error:                                            ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %rf_type to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %rf_type, align 1
  %pa_type124 = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 8
  %27 = ptrtoint ptr %pa_type124 to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load125 = load i16, ptr %pa_type124, align 2
  %bf.clear142 = and i16 %bf.load125, 255
  store i16 %bf.clear142, ptr %pa_type124, align 2
  br label %cleanup

cleanup:                                          ; preds = %error, %do.end24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #8
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hw_init(ptr noundef %chip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %intf = getelementptr inbounds %struct.zd_usb, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.64) #11
  %mutex = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 2
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %mutex) #8
  br i1 %call, label %entry.do.end20_crit_edge, label %do.body4, !prof !275

entry.do.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end20

do.body4:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hw_init.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hw_init, %do.end17)) #8
          to label %if.then15 [label %do.end17], !srcloc !274

if.then15:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hw_init.__UNIQUE_ID_ddebug369, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i32 noundef 935, ptr noundef nonnull @.str.11) #8
  br label %do.end17

do.end17:                                         ; preds = %if.then15, %do.body4
  tail call void @dump_stack() #11
  br label %do.end20

do.end20:                                         ; preds = %do.end17, %entry.do.end20_crit_edge
  %is_zd1211b.i.i = getelementptr inbounds %struct.zd_usb, ptr %chip, i32 0, i32 8
  %2 = ptrtoint ptr %is_zd1211b.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i.i = load i8, ptr %is_zd1211b.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i.i, -1
  %3 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %intf, align 4
  %dev.i6.i = getelementptr inbounds %struct.usb_interface, ptr %4, i32 0, i32 7
  br i1 %tobool.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %do.end20
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev.i6.i, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.65) #11
  %call.i.i = tail call i32 @zd_chip_lock_phy_regs(ptr noundef %chip) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %cond.true.i.cleanup_crit_edge

cond.true.i.cleanup_crit_edge:                    ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i:                                       ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i.i = tail call i32 @zd_iowrite16a_locked(ptr noundef %chip, ptr noundef nonnull @zd1211b_hw_reset_phy.ioreqs, i32 noundef 138) #8
  %call2.i.i = tail call i32 @zd_chip_unlock_phy_regs(ptr noundef %chip) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp ne i32 %call2.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i, 0
  %or.cond.i.i = select i1 %tobool3.not.i.i, i1 %tobool4.not.i.i, i1 false
  %spec.select.i.i = select i1 %or.cond.i.i, i32 %call2.i.i, i32 %call1.i.i
  br label %hw_reset_phy.exit

cond.false.i:                                     ; preds = %do.end20
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev.i6.i, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.66) #11
  %call.i7.i = tail call i32 @zd_chip_lock_phy_regs(ptr noundef %chip) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7.i)
  %tobool.not.i8.i = icmp eq i32 %call.i7.i, 0
  br i1 %tobool.not.i8.i, label %if.end.i10.i, label %cond.false.i.cleanup_crit_edge

cond.false.i.cleanup_crit_edge:                   ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i10.i:                                     ; preds = %cond.false.i
  %call1.i9.i = tail call i32 @zd_iowrite16a_locked(ptr noundef %chip, ptr noundef nonnull @zd1211_hw_reset_phy.ioreqs, i32 noundef 177) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i9.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i9.i, 0
  br i1 %tobool2.not.i.i, label %if.end4.i.i, label %if.end.i10.i.unlock.i.i_crit_edge

if.end.i10.i.unlock.i.i_crit_edge:                ; preds = %if.end.i10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock.i.i

if.end4.i.i:                                      ; preds = %if.end.i10.i
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i.i = tail call fastcc i32 @patch_cr157(ptr noundef %chip) #8
  br label %unlock.i.i

unlock.i.i:                                       ; preds = %if.end4.i.i, %if.end.i10.i.unlock.i.i_crit_edge
  %r.0.i11.i = phi i32 [ %call1.i9.i, %if.end.i10.i.unlock.i.i_crit_edge ], [ %call5.i.i, %if.end4.i.i ]
  %call6.i.i = tail call i32 @zd_chip_unlock_phy_regs(ptr noundef %chip) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp ne i32 %call6.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.0.i11.i)
  %tobool8.not.i.i = icmp eq i32 %r.0.i11.i, 0
  %or.cond.i12.i = select i1 %tobool7.not.i.i, i1 %tobool8.not.i.i, i1 false
  %spec.select.i13.i = select i1 %or.cond.i12.i, i32 %call6.i.i, i32 %r.0.i11.i
  br label %hw_reset_phy.exit

hw_reset_phy.exit:                                ; preds = %unlock.i.i, %if.end.i.i
  %cond.i = phi i32 [ %spec.select.i.i, %if.end.i.i ], [ %spec.select.i13.i, %unlock.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %tobool22.not = icmp eq i32 %cond.i, 0
  br i1 %tobool22.not, label %if.end24, label %hw_reset_phy.exit.cleanup_crit_edge

hw_reset_phy.exit.cleanup_crit_edge:              ; preds = %hw_reset_phy.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end24:                                         ; preds = %hw_reset_phy.exit
  %call25 = tail call fastcc i32 @hw_init_hmac(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %call29 = tail call fastcc i32 @set_beacon_interval(ptr noundef %chip, i16 noundef zeroext 100, i8 noundef zeroext 0, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.end24.cleanup_crit_edge, %hw_reset_phy.exit.cleanup_crit_edge, %cond.false.i.cleanup_crit_edge, %cond.true.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call29, %if.end28 ], [ %cond.i, %hw_reset_phy.exit.cleanup_crit_edge ], [ %call25, %if.end24.cleanup_crit_edge ], [ %call.i7.i, %cond.false.i.cleanup_crit_edge ], [ %call.i.i, %cond.true.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zd_rf_init_hw(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @print_fw_version(ptr noundef %chip) unnamed_addr #0 align 64 {
entry:
  %addr.addr.i.i = alloca i16, align 2
  %version = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.zd_mac, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %wiphy1 = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wiphy1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wiphy1, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %version) #8
  %4 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %version, align 2, !annotation !276
  %fw_regs_base.i = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 3
  %5 = ptrtoint ptr %fw_regs_base.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %fw_regs_base.i, align 4
  %mutex.i = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 2
  %call.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mutex.i) #8
  br i1 %call.i, label %entry.zd_ioread16_locked.exit_crit_edge, label %do.body3.i, !prof !275

entry.zd_ioread16_locked.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %zd_ioread16_locked.exit

do.body3.i:                                       ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd_ioread16_locked.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@print_fw_version, %do.end.i)) #8
          to label %if.then14.i [label %do.end.i], !srcloc !274

if.then14.i:                                      ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zd_ioread16_locked.__UNIQUE_ID_ddebug354, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.37, i32 noundef 807, ptr noundef nonnull @.str.11) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then14.i, %do.body3.i
  tail call void @dump_stack() #11
  br label %zd_ioread16_locked.exit

zd_ioread16_locked.exit:                          ; preds = %do.end.i, %entry.zd_ioread16_locked.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr.addr.i.i) #8
  %7 = ptrtoint ptr %addr.addr.i.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %addr.addr.i.i, align 2
  %call.i.i = call i32 @zd_usb_ioread16v(ptr noundef %chip, ptr noundef nonnull %version, ptr noundef nonnull %addr.addr.i.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr.addr.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %do.end, label %zd_ioread16_locked.exit.cleanup_crit_edge

zd_ioread16_locked.exit.cleanup_crit_edge:        ; preds = %zd_ioread16_locked.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %zd_ioread16_locked.exit
  call void @__sanitizer_cov_trace_pc() #10
  %intf = getelementptr inbounds %struct.zd_usb, ptr %chip, i32 0, i32 3
  %8 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %version to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %version, align 2
  %conv = zext i16 %11 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.72, i32 noundef %conv) #11
  %fw_version = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 38
  %12 = ptrtoint ptr %version to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %version, align 2
  %conv4 = zext i16 %13 to i32
  %call5 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fw_version, i32 noundef 32, ptr noundef nonnull @.str.75, i32 noundef %conv4)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %zd_ioread16_locked.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %version) #8
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dump_fw_registers(ptr noundef %chip) unnamed_addr #0 align 64 {
entry:
  %addr = alloca [4 x i16], align 2
  %values = alloca [4 x i16], align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %addr) #8
  %0 = getelementptr inbounds [4 x i16], ptr %addr, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i16], ptr %addr, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i16], ptr %addr, i32 0, i32 3
  %fw_regs_base.i = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 3
  %3 = ptrtoint ptr %fw_regs_base.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %fw_regs_base.i, align 4
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %addr, align 2
  %add.i = add i16 %4, 1
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %add.i, ptr %0, align 2
  %add.i52 = add i16 %4, 2
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %add.i52, ptr %1, align 2
  %add.i54 = add i16 %4, 3
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %add.i54, ptr %2, align 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %values) #8
  %9 = getelementptr inbounds [4 x i16], ptr %values, i32 0, i32 1
  %10 = getelementptr inbounds [4 x i16], ptr %values, i32 0, i32 2
  %11 = getelementptr inbounds [4 x i16], ptr %values, i32 0, i32 3
  %mutex.i = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 2
  %12 = ptrtoint ptr %values to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 -1, ptr %values, align 8
  %call.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mutex.i) #8
  br i1 %call.i, label %entry.zd_ioread16v_locked.exit_crit_edge, label %do.body3.i, !prof !275

entry.zd_ioread16v_locked.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %zd_ioread16v_locked.exit

do.body3.i:                                       ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd_ioread16v_locked.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dump_fw_registers, %do.end.i)) #8
          to label %if.then14.i [label %do.end.i], !srcloc !274

if.then14.i:                                      ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zd_ioread16v_locked.__UNIQUE_ID_ddebug353, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.37, i32 noundef 800, ptr noundef nonnull @.str.11) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then14.i, %do.body3.i
  tail call void @dump_stack() #11
  br label %zd_ioread16v_locked.exit

zd_ioread16v_locked.exit:                         ; preds = %do.end.i, %entry.zd_ioread16v_locked.exit_crit_edge
  %call17.i = call i32 @zd_usb_ioread16v(ptr noundef %chip, ptr noundef nonnull %values, ptr noundef nonnull %addr, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool.not = icmp eq i32 %call17.i, 0
  %intf12 = getelementptr inbounds %struct.zd_usb, ptr %chip, i32 0, i32 3
  %13 = ptrtoint ptr %intf12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %intf12, align 4
  %dev13 = getelementptr inbounds %struct.usb_interface, ptr %14, i32 0, i32 7
  br i1 %tobool.not, label %do.end10, label %do.end

do.end:                                           ; preds = %zd_ioread16v_locked.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev13, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.77, i32 noundef %call17.i) #11
  br label %cleanup

do.end10:                                         ; preds = %zd_ioread16v_locked.exit
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %values to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %values, align 8
  %conv = zext i16 %16 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev13, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.77, i32 noundef %conv) #11
  %17 = ptrtoint ptr %intf12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %intf12, align 4
  %dev19 = getelementptr inbounds %struct.usb_interface, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %9, align 2
  %conv21 = zext i16 %20 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev19, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.77, i32 noundef %conv21) #11
  %21 = ptrtoint ptr %intf12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %intf12, align 4
  %dev27 = getelementptr inbounds %struct.usb_interface, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %10, align 4
  %conv29 = zext i16 %24 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev27, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.77, i32 noundef %conv29) #11
  %25 = ptrtoint ptr %intf12 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %intf12, align 4
  %dev35 = getelementptr inbounds %struct.usb_interface, ptr %26, i32 0, i32 7
  %27 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %11, align 2
  %conv37 = zext i16 %28 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev35, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.77, i32 noundef %conv37) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end10, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %values) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %addr) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_cal_int_tables(ptr noundef %chip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pwr_cal_values.i = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 4
  %call.i = tail call fastcc i32 @read_values(ptr noundef %chip, ptr noundef %pwr_cal_values.i, i16 noundef zeroext -2017, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %pwr_int_values.i = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 5
  %call.i16 = tail call fastcc i32 @read_values(ptr noundef %chip, ptr noundef %pwr_int_values.i, i16 noundef zeroext -2009, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16)
  %tobool2.not = icmp eq i32 %call.i16, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %arrayidx.i = getelementptr %struct.zd_chip, ptr %chip, i32 0, i32 6, i32 0
  %call.i17 = tail call fastcc i32 @read_values(ptr noundef %chip, ptr noundef %arrayidx.i, i16 noundef zeroext -1985, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17)
  %tobool.not.i = icmp eq i32 %call.i17, 0
  br i1 %tobool.not.i, label %for.cond.i, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.i:                                       ; preds = %if.end4
  %arrayidx.1.i = getelementptr %struct.zd_chip, ptr %chip, i32 0, i32 6, i32 1
  %call.1.i = tail call fastcc i32 @read_values(ptr noundef %chip, ptr noundef %arrayidx.1.i, i16 noundef zeroext -1969, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %for.cond.1.i, label %for.cond.i.cleanup_crit_edge

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.1.i:                                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.2.i = getelementptr %struct.zd_chip, ptr %chip, i32 0, i32 6, i32 2
  %call.2.i = tail call fastcc i32 @read_values(ptr noundef %chip, ptr noundef %arrayidx.2.i, i16 noundef zeroext -1953, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %for.cond.1.i, %for.cond.i.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call.i16, %if.end.cleanup_crit_edge ], [ %call.i17, %if.end4.cleanup_crit_edge ], [ %call.1.i, %for.cond.i.cleanup_crit_edge ], [ %call.2.i, %for.cond.1.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @print_id(ptr noundef %chip) unnamed_addr #0 align 64 {
entry:
  %buffer = alloca [80 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %buffer) #8
  %0 = call ptr @memset(ptr %buffer, i32 255, i32 80)
  %is_zd1211b.i.i = getelementptr inbounds %struct.zd_usb, ptr %chip, i32 0, i32 8
  %1 = ptrtoint ptr %is_zd1211b.i.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load.i.i = load i8, ptr %is_zd1211b.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i.i, -1
  %cond.i = select i1 %tobool.not.i, ptr @.str.95, ptr @.str.94
  %call1.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buffer, i32 noundef 80, ptr noundef nonnull @.str.93, ptr noundef nonnull %cond.i) #8
  %add.ptr.i = getelementptr i8, ptr %buffer, i32 %call1.i
  %sub.i = sub i32 80, %call1.i
  %call2.i = call i32 @zd_usb_scnprint_id(ptr noundef %chip, ptr noundef %add.ptr.i, i32 noundef %sub.i) #8
  %add.i = add i32 %call2.i, %call1.i
  %add.ptr3.i = getelementptr i8, ptr %buffer, i32 %add.i
  %sub4.i = sub i32 80, %add.i
  %call5.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr3.i, i32 noundef %sub4.i, ptr noundef nonnull @.str.96) #8
  %add6.i = add i32 %add.i, %call5.i
  %add.ptr7.i = getelementptr i8, ptr %buffer, i32 %add6.i
  %sub8.i = sub i32 80, %add6.i
  %hw.i.i.i = getelementptr inbounds %struct.zd_mac, ptr %chip, i32 0, i32 3
  %2 = ptrtoint ptr %hw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw.i.i.i, align 4
  %wiphy.i.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %wiphy.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wiphy.i.i.i, align 8
  %perm_addr.i.i.i = getelementptr inbounds %struct.wiphy, ptr %5, i32 0, i32 1
  %call2.i.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr7.i, i32 noundef %sub8.i, ptr noundef nonnull @.str.98, ptr noundef %perm_addr.i.i.i) #8
  %add10.i = add i32 %call2.i.i, %add6.i
  %add.ptr11.i = getelementptr i8, ptr %buffer, i32 %add10.i
  %sub12.i = sub i32 80, %add10.i
  %call13.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr11.i, i32 noundef %sub12.i, ptr noundef nonnull @.str.96) #8
  %add14.i = add i32 %add10.i, %call13.i
  %rf.i = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 1
  %add.ptr15.i = getelementptr i8, ptr %buffer, i32 %add14.i
  %sub16.i = sub i32 80, %add14.i
  %call17.i = call i32 @zd_rf_scnprint_id(ptr noundef %rf.i, ptr noundef %add.ptr15.i, i32 noundef %sub16.i) #8
  %add18.i = add i32 %add14.i, %call17.i
  %add.ptr19.i = getelementptr i8, ptr %buffer, i32 %add18.i
  %sub20.i = sub i32 80, %add18.i
  %pa_type.i = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 8
  %6 = ptrtoint ptr %pa_type.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i = load i16, ptr %pa_type.i, align 2
  %bf.lshr.i = lshr i16 %bf.load.i, 12
  %bf.cast.i = zext i16 %bf.lshr.i to i32
  %7 = and i16 %bf.load.i, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool24.not.i = icmp eq i16 %7, 0
  %cond25.i = select i1 %tobool24.not.i, i32 45, i32 103
  %8 = and i16 %bf.load.i, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool30.not.i = icmp eq i16 %8, 0
  %cond31.i = select i1 %tobool30.not.i, i32 45, i32 55
  %9 = and i16 %bf.load.i, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool36.not.i = icmp eq i16 %9, 0
  %cond37.i = select i1 %tobool36.not.i, i32 45, i32 54
  %10 = and i16 %bf.load.i, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool42.not.i = icmp eq i16 %10, 0
  %cond43.i = select i1 %tobool42.not.i, i32 45, i32 78
  %11 = and i16 %bf.load.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool48.not.i = icmp eq i16 %11, 0
  %cond49.i = select i1 %tobool48.not.i, i32 45, i32 83
  %call50.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr19.i, i32 noundef %sub20.i, ptr noundef nonnull @.str.97, i32 noundef %bf.cast.i, i32 noundef %cond25.i, i32 noundef %cond31.i, i32 noundef %cond37.i, i32 noundef %cond43.i, i32 noundef %cond49.i) #8
  %arrayidx = getelementptr inbounds [80 x i8], ptr %buffer, i32 0, i32 79
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx, align 1
  %intf = getelementptr inbounds %struct.zd_usb, ptr %chip, i32 0, i32 3
  %13 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %14, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.91, ptr noundef nonnull %buffer) #11
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %buffer) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zd_chip_set_channel(ptr noundef %chip, i8 noundef zeroext %channel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %call = tail call i32 @zd_chip_lock_phy_regs(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %rf = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 1
  %call1 = tail call i32 @zd_rf_set_channel(ptr noundef %rf, i8 noundef zeroext %channel) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.unlock_crit_edge

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.end4:                                          ; preds = %if.end
  %call5 = tail call fastcc i32 @update_channel_integration_and_calibration(ptr noundef %chip, i8 noundef zeroext %channel)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.unlock_crit_edge

if.end4.unlock_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.end8:                                          ; preds = %if.end4
  %call9 = tail call fastcc i32 @patch_cck_gain(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.unlock_crit_edge

if.end8.unlock_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.end12:                                         ; preds = %if.end8
  %call.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mutex) #8
  br i1 %call.i, label %if.end12.do.end16.i_crit_edge, label %do.body3.i, !prof !275

if.end12.do.end16.i_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end16.i

do.body3.i:                                       ; preds = %if.end12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @patch_6m_band_edge.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@zd_chip_set_channel, %do.end.i)) #8
          to label %if.then14.i [label %do.end.i], !srcloc !274

if.then14.i:                                      ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @patch_6m_band_edge.__UNIQUE_ID_ddebug364, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i32 noundef 570, ptr noundef nonnull @.str.11) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then14.i, %do.body3.i
  tail call void @dump_stack() #11
  br label %do.end16.i

do.end16.i:                                       ; preds = %do.end.i, %if.end12.do.end16.i_crit_edge
  %patch_6m_band_edge.i = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 8
  %0 = ptrtoint ptr %patch_6m_band_edge.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load.i = load i16, ptr %patch_6m_band_edge.i, align 2
  %1 = and i16 %bf.load.i, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool17.not.i = icmp eq i16 %1, 0
  br i1 %tobool17.not.i, label %do.end16.i.if.end16_crit_edge, label %patch_6m_band_edge.exit

do.end16.i.if.end16_crit_edge:                    ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

patch_6m_band_edge.exit:                          ; preds = %do.end16.i
  %call20.i = tail call i32 @zd_rf_patch_6m_band_edge(ptr noundef %rf, i8 noundef zeroext %channel) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool14.not = icmp eq i32 %call20.i, 0
  br i1 %tobool14.not, label %patch_6m_band_edge.exit.if.end16_crit_edge, label %patch_6m_band_edge.exit.unlock_crit_edge

patch_6m_band_edge.exit.unlock_crit_edge:         ; preds = %patch_6m_band_edge.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

patch_6m_band_edge.exit.if.end16_crit_edge:       ; preds = %patch_6m_band_edge.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.end16:                                         ; preds = %patch_6m_band_edge.exit.if.end16_crit_edge, %do.end16.i.if.end16_crit_edge
  %call17 = tail call fastcc i32 @zd_iowrite32_locked(ptr noundef %chip, i32 noundef 0, i16 noundef zeroext -27584)
  br label %unlock

unlock:                                           ; preds = %if.end16, %patch_6m_band_edge.exit.unlock_crit_edge, %if.end8.unlock_crit_edge, %if.end4.unlock_crit_edge, %if.end.unlock_crit_edge
  %r.0 = phi i32 [ %call1, %if.end.unlock_crit_edge ], [ %call5, %if.end4.unlock_crit_edge ], [ %call9, %if.end8.unlock_crit_edge ], [ %call20.i, %patch_6m_band_edge.exit.unlock_crit_edge ], [ %call17, %if.end16 ]
  %call18 = tail call i32 @zd_chip_unlock_phy_regs(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp ne i32 %call18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.0)
  %tobool20.not = icmp eq i32 %r.0, 0
  %or.cond = select i1 %tobool19.not, i1 %tobool20.not, i1 false
  %spec.select = select i1 %or.cond, i32 %call18, i32 %r.0
  br label %out

out:                                              ; preds = %unlock, %entry.out_crit_edge
  %r.1 = phi i32 [ %call, %entry.out_crit_edge ], [ %spec.select, %unlock ]
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 %r.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zd_rf_set_channel(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @update_channel_integration_and_calibration(ptr noundef %chip, i8 noundef zeroext %channel) unnamed_addr #0 align 64 {
entry:
  %ioreq.i.i41 = alloca %struct.zd_ioreq16, align 2
  %ioreqs.i = alloca [3 x %struct.zd_ioreq16], align 2
  %ioreq.i.i = alloca %struct.zd_ioreq16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %update_channel_int.i = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %update_channel_int.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %update_channel_int.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv.i35 = zext i8 %channel to i32
  %sub.i = add nsw i32 %conv.i35, -1
  %arrayidx.i = getelementptr %struct.zd_chip, ptr %chip, i32 0, i32 5, i32 %sub.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ioreq.i.i) #8
  %mutex.i.i = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mutex.i.i) #8
  br i1 %call.i.i, label %if.end.update_pwr_int.exit_crit_edge, label %do.body3.i.i, !prof !275

if.end.update_pwr_int.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_pwr_int.exit

do.body3.i.i:                                     ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd_iowrite16_locked.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@update_channel_integration_and_calibration, %do.end.i.i)) #8
          to label %if.then14.i.i [label %do.end.i.i], !srcloc !274

if.then14.i.i:                                    ; preds = %do.body3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zd_iowrite16_locked.__UNIQUE_ID_ddebug355, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.37, i32 noundef 825, ptr noundef nonnull @.str.11) #8
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then14.i.i, %do.body3.i.i
  tail call void @dump_stack() #11
  br label %update_pwr_int.exit

update_pwr_int.exit:                              ; preds = %do.end.i.i, %if.end.update_pwr_int.exit_crit_edge
  %conv1.i = zext i8 %2 to i16
  %3 = getelementptr inbounds %struct.zd_ioreq16, ptr %ioreq.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %ioreq.i.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -28548, ptr %ioreq.i.i, align 2
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv1.i, ptr %3, align 2
  %call20.i.i = call i32 @zd_usb_iowrite16v(ptr noundef %chip, ptr noundef nonnull %ioreq.i.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ioreq.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i)
  %tobool2.not = icmp eq i32 %call20.i.i, 0
  br i1 %tobool2.not, label %if.end4, label %update_pwr_int.exit.cleanup_crit_edge

update_pwr_int.exit.cleanup_crit_edge:            ; preds = %update_pwr_int.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %update_pwr_int.exit
  %is_zd1211b.i = getelementptr inbounds %struct.zd_usb, ptr %chip, i32 0, i32 8
  %6 = ptrtoint ptr %is_zd1211b.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i36 = load i8, ptr %is_zd1211b.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i36)
  %tobool6.not = icmp sgt i8 %bf.load.i36, -1
  br i1 %tobool6.not, label %if.end4.if.end20_crit_edge, label %if.then7

if.end4.if.end20_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then7:                                         ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ioreqs.i) #8
  %7 = getelementptr inbounds %struct.zd_ioreq16, ptr %ioreqs.i, i32 0, i32 1
  %8 = getelementptr inbounds [3 x %struct.zd_ioreq16], ptr %ioreqs.i, i32 0, i32 1
  %9 = getelementptr inbounds [3 x %struct.zd_ioreq16], ptr %ioreqs.i, i32 0, i32 1, i32 1
  %10 = getelementptr inbounds [3 x %struct.zd_ioreq16], ptr %ioreqs.i, i32 0, i32 2
  %11 = getelementptr inbounds [3 x %struct.zd_ioreq16], ptr %ioreqs.i, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %ioreqs.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -28404, ptr %ioreqs.i, align 2
  %ofdm_cal_values.i = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 6
  %arrayidx2.i = getelementptr [14 x i8], ptr %ofdm_cal_values.i, i32 0, i32 %sub.i
  %13 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx2.i, align 1
  %conv3.i = zext i8 %14 to i16
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv3.i, ptr %7, align 2
  %16 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -28408, ptr %8, align 2
  %arrayidx11.i = getelementptr %struct.zd_chip, ptr %chip, i32 0, i32 6, i32 1, i32 %sub.i
  %17 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx11.i, align 1
  %conv12.i = zext i8 %18 to i16
  %19 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv12.i, ptr %9, align 2
  %20 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 -28412, ptr %10, align 2
  %arrayidx21.i = getelementptr %struct.zd_chip, ptr %chip, i32 0, i32 6, i32 2, i32 %sub.i
  %21 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx21.i, align 1
  %conv22.i = zext i8 %22 to i16
  %23 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv22.i, ptr %11, align 2
  %call.i = call i32 @zd_iowrite16a_locked(ptr noundef %chip, ptr noundef nonnull %ioreqs.i, i32 noundef 3) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ioreqs.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not = icmp eq i32 %call.i, 0
  br i1 %tobool9.not, label %if.end11, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.then7
  %arrayidx.i44 = getelementptr %struct.zd_chip, ptr %chip, i32 0, i32 4, i32 %sub.i
  %24 = ptrtoint ptr %arrayidx.i44 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.i44, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ioreq.i.i41) #8
  %call.i.i46 = call zeroext i1 @mutex_is_locked(ptr noundef %mutex.i.i) #8
  br i1 %call.i.i46, label %if.end11.update_pwr_cal.exit_crit_edge, label %do.body3.i.i47, !prof !275

if.end11.update_pwr_cal.exit_crit_edge:           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_pwr_cal.exit

do.body3.i.i47:                                   ; preds = %if.end11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd_iowrite16_locked.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@update_channel_integration_and_calibration, %do.end.i.i49)) #8
          to label %if.then14.i.i48 [label %do.end.i.i49], !srcloc !274

if.then14.i.i48:                                  ; preds = %do.body3.i.i47
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zd_iowrite16_locked.__UNIQUE_ID_ddebug355, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.37, i32 noundef 825, ptr noundef nonnull @.str.11) #8
  br label %do.end.i.i49

do.end.i.i49:                                     ; preds = %if.then14.i.i48, %do.body3.i.i47
  call void @dump_stack() #11
  br label %update_pwr_cal.exit

update_pwr_cal.exit:                              ; preds = %do.end.i.i49, %if.end11.update_pwr_cal.exit_crit_edge
  %conv1.i50 = zext i8 %25 to i16
  %26 = getelementptr inbounds %struct.zd_ioreq16, ptr %ioreq.i.i41, i32 0, i32 1
  %27 = ptrtoint ptr %ioreq.i.i41 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 -28400, ptr %ioreq.i.i41, align 2
  %28 = ptrtoint ptr %26 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv1.i50, ptr %26, align 2
  %call20.i.i51 = call i32 @zd_usb_iowrite16v(ptr noundef %chip, ptr noundef nonnull %ioreq.i.i41, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ioreq.i.i41) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i51)
  %tobool13.not = icmp eq i32 %call20.i.i51, 0
  br i1 %tobool13.not, label %if.end15, label %update_pwr_cal.exit.cleanup_crit_edge

update_pwr_cal.exit.cleanup_crit_edge:            ; preds = %update_pwr_cal.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %update_pwr_cal.exit
  %call16 = call i32 @zd_iowrite16a_locked(ptr noundef %chip, ptr noundef nonnull @update_channel_integration_and_calibration.ioreqs, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end15.if.end20_crit_edge, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.end20:                                         ; preds = %if.end15.if.end20_crit_edge, %if.end4.if.end20_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end15.cleanup_crit_edge, %update_pwr_cal.exit.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %update_pwr_int.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end20 ], [ 0, %entry.cleanup_crit_edge ], [ %call20.i.i, %update_pwr_int.exit.cleanup_crit_edge ], [ %call.i, %if.then7.cleanup_crit_edge ], [ %call20.i.i51, %update_pwr_cal.exit.cleanup_crit_edge ], [ %call16, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @patch_cck_gain(ptr noundef %chip) unnamed_addr #0 align 64 {
entry:
  %addr.addr.i = alloca i16, align 2
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #8
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !276
  %patch_cck_gain = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 8
  %1 = ptrtoint ptr %patch_cck_gain to i32
  call void @__asan_load2_noabort(i32 %1)
  %bf.load = load i16, ptr %patch_cck_gain, align 2
  %2 = and i16 %bf.load, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %patch_cck_gain.i = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 1, i32 2
  %3 = ptrtoint ptr %patch_cck_gain.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load.i = load i8, ptr %patch_cck_gain.i, align 2
  %4 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not = icmp eq i8 %4, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %do.body

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false
  %mutex = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 2
  %call2 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mutex) #8
  br i1 %call2, label %do.body.do.end22_crit_edge, label %do.body7, !prof !275

do.body.do.end22_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22

do.body7:                                         ; preds = %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @patch_cck_gain.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@patch_cck_gain, %do.end)) #8
          to label %if.then18 [label %do.end], !srcloc !274

if.then18:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @patch_cck_gain.__UNIQUE_ID_ddebug372, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i32 noundef 1253, ptr noundef nonnull @.str.11) #8
  br label %do.end

do.end:                                           ; preds = %if.then18, %do.body7
  tail call void @dump_stack() #11
  br label %do.end22

do.end22:                                         ; preds = %do.end, %do.body.do.end22_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr.addr.i)
  %5 = ptrtoint ptr %addr.addr.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1988, ptr %addr.addr.i, align 2
  %call.i = call i32 @zd_ioread32v_locked(ptr noundef %chip, ptr noundef nonnull %value, ptr noundef nonnull %addr.addr.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool24.not = icmp eq i32 %call.i, 0
  br i1 %tobool24.not, label %do.end29, label %do.end22.cleanup_crit_edge

do.end22.cleanup_crit_edge:                       ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end29:                                         ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #10
  %intf = getelementptr inbounds %struct.zd_usb, ptr %chip, i32 0, i32 3
  %6 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 4
  %and = and i32 %9, 255
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.99, i32 noundef %and) #11
  %10 = trunc i32 %9 to i16
  %conv = and i16 %10, 255
  %call31 = tail call fastcc i32 @zd_iowrite16_locked(ptr noundef %chip, i16 noundef zeroext %conv, i16 noundef zeroext -28484)
  br label %cleanup

cleanup:                                          ; preds = %do.end29, %do.end22.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call31, %do.end29 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %call.i, %do.end22.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @zd_chip_get_channel(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %channel1 = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %channel1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %channel1, align 1
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i8 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zd_chip_control_leds(ptr noundef %chip, i32 noundef %status) local_unnamed_addr #0 align 64 {
entry:
  %a = alloca [2 x i16], align 2
  %v = alloca [2 x i16], align 2
  %ioreqs = alloca [2 x %struct.zd_ioreq16], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a) #8
  %0 = getelementptr inbounds [2 x i16], ptr %a, i32 0, i32 1
  %fw_regs_base.i = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 3
  %1 = ptrtoint ptr %fw_regs_base.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %fw_regs_base.i, align 4
  %add.i = add i16 %2, 3
  %3 = ptrtoint ptr %a to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %add.i, ptr %a, align 2
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -27068, ptr %0, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v) #8
  %5 = ptrtoint ptr %v to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %v, align 2, !annotation !276
  %6 = getelementptr inbounds [2 x i16], ptr %v, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %6, align 2, !annotation !276
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ioreqs) #8
  %8 = getelementptr inbounds %struct.zd_ioreq16, ptr %ioreqs, i32 0, i32 1
  %9 = getelementptr inbounds [2 x %struct.zd_ioreq16], ptr %ioreqs, i32 0, i32 1
  %10 = getelementptr inbounds [2 x %struct.zd_ioreq16], ptr %ioreqs, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %ioreqs to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %add.i, ptr %ioreqs, align 2
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %8, align 2
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 -27068, ptr %9, align 2
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %10, align 2
  %mutex = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %call.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mutex) #8
  br i1 %call.i, label %entry.zd_ioread16v_locked.exit_crit_edge, label %do.body3.i, !prof !275

entry.zd_ioread16v_locked.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %zd_ioread16v_locked.exit

do.body3.i:                                       ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd_ioread16v_locked.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@zd_chip_control_leds, %do.end.i)) #8
          to label %if.then14.i [label %do.end.i], !srcloc !274

if.then14.i:                                      ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zd_ioread16v_locked.__UNIQUE_ID_ddebug353, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.37, i32 noundef 800, ptr noundef nonnull @.str.11) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then14.i, %do.body3.i
  tail call void @dump_stack() #11
  br label %zd_ioread16v_locked.exit

zd_ioread16v_locked.exit:                         ; preds = %do.end.i, %entry.zd_ioread16v_locked.exit_crit_edge
  %call17.i = call i32 @zd_usb_ioread16v(ptr noundef %chip, ptr noundef nonnull %v, ptr noundef nonnull %a, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool.not = icmp eq i32 %call17.i, 0
  br i1 %tobool.not, label %if.end, label %zd_ioread16v_locked.exit.out_crit_edge

zd_ioread16v_locked.exit.out_crit_edge:           ; preds = %zd_ioread16v_locked.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %zd_ioread16v_locked.exit
  %link_led = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 7
  %15 = ptrtoint ptr %link_led to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %link_led, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %16)
  %cmp = icmp eq i16 %16, 256
  %conv9 = select i1 %cmp, i16 512, i16 256
  %17 = zext i32 %status to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %status, label %if.end.out_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb16
    i32 2, label %sw.bb46
  ]

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %8, align 2
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %6, align 2
  %21 = and i16 %20, -769
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end
  %22 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %8, align 2
  %23 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %6, align 2
  %neg = xor i16 %conv9, -1
  %and22 = and i16 %24, %neg
  %25 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %and22, ptr %10, align 2
  %call26 = call i64 @ktime_get_seconds() #8
  %conv27 = trunc i64 %call26 to i32
  %rem = urem i32 %conv27, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp28 = icmp eq i32 %rem, 0
  %26 = ptrtoint ptr %link_led to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %link_led, align 4
  br i1 %cmp28, label %if.then30, label %if.else

if.then30:                                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #10
  %neg33 = xor i16 %27, -1
  %28 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %10, align 2
  %and37 = and i16 %29, %neg33
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %10, align 2
  %or99 = or i16 %31, %27
  br label %sw.epilog

sw.bb46:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 1, ptr %8, align 2
  %33 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %6, align 2
  %neg52 = xor i16 %conv9, -1
  %and53 = and i16 %34, %neg52
  %or6298 = or i16 %and53, %16
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb46, %if.else, %if.then30, %sw.bb
  %and37.sink = phi i16 [ %and37, %if.then30 ], [ %or99, %if.else ], [ %or6298, %sw.bb46 ], [ %21, %sw.bb ]
  %35 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %and37.sink, ptr %10, align 2
  %36 = ptrtoint ptr %v to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %v, align 2
  %38 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %8, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %37, i16 %39)
  %cmp69.not = icmp eq i16 %37, %39
  br i1 %cmp69.not, label %lor.lhs.false, label %sw.epilog.if.then78_crit_edge

sw.epilog.if.then78_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then78

lor.lhs.false:                                    ; preds = %sw.epilog
  %40 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %6, align 2
  %42 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %10, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %41, i16 %43)
  %cmp76.not = icmp eq i16 %41, %43
  br i1 %cmp76.not, label %lor.lhs.false.if.end84_crit_edge, label %lor.lhs.false.if.then78_crit_edge

lor.lhs.false.if.then78_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then78

lor.lhs.false.if.end84_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

if.then78:                                        ; preds = %lor.lhs.false.if.then78_crit_edge, %sw.epilog.if.then78_crit_edge
  %call80 = call i32 @zd_iowrite16a_locked(ptr noundef %chip, ptr noundef nonnull %ioreqs, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.then78.if.end84_crit_edge, label %if.then78.out_crit_edge

if.then78.out_crit_edge:                          ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then78.if.end84_crit_edge:                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

if.end84:                                         ; preds = %if.then78.if.end84_crit_edge, %lor.lhs.false.if.end84_crit_edge
  br label %out

out:                                              ; preds = %if.end84, %if.then78.out_crit_edge, %if.end.out_crit_edge, %zd_ioread16v_locked.exit.out_crit_edge
  %r.0 = phi i32 [ %call17.i, %zd_ioread16v_locked.exit.out_crit_edge ], [ %call80, %if.then78.out_crit_edge ], [ 0, %if.end84 ], [ -22, %if.end.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ioreqs) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a) #8
  ret i32 %r.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_seconds() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zd_chip_set_basic_rates(ptr noundef %chip, i16 noundef zeroext %cr_rates) local_unnamed_addr #0 align 64 {
entry:
  %ioreq.i = alloca %struct.zd_ioreq32, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %cr_rates to i32
  %and = and i32 %conv, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ioreq.i) #8
  %0 = ptrtoint ptr %ioreq.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -7624312694161539073, ptr %ioreq.i, align 8, !annotation !276
  %value2.i = getelementptr inbounds %struct.zd_ioreq32, ptr %ioreq.i, i32 0, i32 1
  %1 = ptrtoint ptr %value2.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %conv, ptr %value2.i, align 4
  tail call void @zd_usb_iowrite16v_async_start(ptr noundef %chip) #8
  %call.i.i = call fastcc i32 @_zd_iowrite32v_async_locked(ptr noundef %chip, ptr noundef nonnull %ioreq.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i.i = tail call i32 @zd_usb_iowrite16v_async_end(ptr noundef %chip, i32 noundef 0) #8
  br label %zd_iowrite32_locked.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i.i = tail call i32 @zd_usb_iowrite16v_async_end(ptr noundef %chip, i32 noundef 50) #8
  br label %zd_iowrite32_locked.exit

zd_iowrite32_locked.exit:                         ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call4.i.i, %if.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ioreq.i) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %zd_iowrite32_locked.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.i, %zd_iowrite32_locked.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @zd_rx_rate(ptr nocapture noundef readonly %rx_frame, ptr nocapture noundef readonly %status) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %frame_status = getelementptr inbounds %struct.rx_status, ptr %status, i32 0, i32 4
  %0 = ptrtoint ptr %frame_status to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %frame_status, align 1
  %2 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  %3 = ptrtoint ptr %rx_frame to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %rx_frame, align 1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = and i8 %4, 15
  %6 = or i8 %5, 16
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.104)
  switch i8 %4, label %if.else.if.end_crit_edge [
    i8 110, label %sw.bb5
    i8 20, label %sw.bb3
    i8 55, label %sw.bb4
  ]

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

sw.bb3:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

sw.bb4:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

sw.bb5:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %sw.bb5, %sw.bb4, %sw.bb3, %if.else.if.end_crit_edge, %if.then
  %zd_rate.0 = phi i8 [ %6, %if.then ], [ 3, %sw.bb5 ], [ 2, %sw.bb4 ], [ 1, %sw.bb3 ], [ 0, %if.else.if.end_crit_edge ]
  ret i8 %zd_rate.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zd_chip_switch_radio_on(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %rf = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 1
  %call = tail call i32 @zd_switch_radio_on(ptr noundef %rf) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zd_switch_radio_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zd_chip_switch_radio_off(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %rf = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 1
  %call = tail call i32 @zd_switch_radio_off(ptr noundef %rf) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zd_switch_radio_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zd_chip_enable_int(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %call = tail call i32 @zd_usb_enable_int(ptr noundef %chip) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zd_usb_enable_int(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @zd_chip_disable_int(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  tail call void @zd_usb_disable_int(ptr noundef %chip) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  %process_intr = getelementptr inbounds %struct.zd_mac, ptr %chip, i32 0, i32 8
  %call2 = tail call zeroext i1 @cancel_work_sync(ptr noundef %process_intr) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @zd_usb_disable_int(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zd_chip_enable_rxtx(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  tail call void @zd_usb_enable_tx(ptr noundef %chip) #8
  %call = tail call i32 @zd_usb_enable_rx(ptr noundef %chip) #8
  tail call void @zd_tx_watchdog_enable(ptr noundef %chip) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @zd_usb_enable_tx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zd_usb_enable_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @zd_tx_watchdog_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @zd_chip_disable_rxtx(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  tail call void @zd_tx_watchdog_disable(ptr noundef %chip) #8
  tail call void @zd_usb_disable_rx(ptr noundef %chip) #8
  tail call void @zd_usb_disable_tx(ptr noundef %chip) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @zd_tx_watchdog_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @zd_usb_disable_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @zd_usb_disable_tx(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zd_rfwritev_locked(ptr noundef %chip, ptr nocapture noundef readonly %values, i32 noundef %count, i8 noundef zeroext %bits) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp5.not = icmp eq i32 %count, 0
  br i1 %cmp5.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %mutex.i = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 2
  br label %for.body

for.cond:                                         ; preds = %zd_rfwrite_locked.exit
  %inc = add nuw i32 %i.06, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.06 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %values, i32 %i.06
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %call.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mutex.i) #8
  br i1 %call.i, label %for.body.zd_rfwrite_locked.exit_crit_edge, label %do.body3.i, !prof !275

for.body.zd_rfwrite_locked.exit_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %zd_rfwrite_locked.exit

do.body3.i:                                       ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd_rfwrite_locked.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@zd_rfwritev_locked, %do.end.i)) #8
          to label %if.then14.i [label %do.end.i], !srcloc !274

if.then14.i:                                      ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zd_rfwrite_locked.__UNIQUE_ID_ddebug356, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.37, i32 noundef 854, ptr noundef nonnull @.str.11) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then14.i, %do.body3.i
  tail call void @dump_stack() #11
  br label %zd_rfwrite_locked.exit

zd_rfwrite_locked.exit:                           ; preds = %do.end.i, %for.body.zd_rfwrite_locked.exit_crit_edge
  %call17.i = tail call i32 @zd_usb_rfwrite(ptr noundef %chip, i32 noundef %1, i8 noundef zeroext %bits) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool.not = icmp eq i32 %call17.i, 0
  br i1 %tobool.not, label %for.cond, label %zd_rfwrite_locked.exit.cleanup_crit_edge

zd_rfwrite_locked.exit.cleanup_crit_edge:         ; preds = %zd_rfwrite_locked.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %zd_rfwrite_locked.exit.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ %call17.i, %zd_rfwrite_locked.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zd_rfwrite_cr_locked(ptr noundef %chip, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  %ioreqs = alloca [3 x %struct.zd_ioreq16], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ioreqs) #8
  %0 = getelementptr inbounds %struct.zd_ioreq16, ptr %ioreqs, i32 0, i32 1
  %1 = getelementptr inbounds [3 x %struct.zd_ioreq16], ptr %ioreqs, i32 0, i32 1
  %2 = getelementptr inbounds [3 x %struct.zd_ioreq16], ptr %ioreqs, i32 0, i32 1, i32 1
  %3 = getelementptr inbounds [3 x %struct.zd_ioreq16], ptr %ioreqs, i32 0, i32 2
  %4 = getelementptr inbounds [3 x %struct.zd_ioreq16], ptr %ioreqs, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %ioreqs to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -27696, ptr %ioreqs, align 2
  %shr = lshr i32 %value, 16
  %6 = trunc i32 %shr to i16
  %conv = and i16 %6, 255
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %0, align 2
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -27700, ptr %1, align 2
  %9 = trunc i32 %value to i16
  %10 = lshr i16 %9, 8
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %2, align 2
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -27704, ptr %3, align 2
  %conv11 = and i16 %9, 255
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv11, ptr %4, align 2
  %mutex = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 2
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %mutex) #8
  br i1 %call, label %entry.do.end28_crit_edge, label %do.body14, !prof !275

entry.do.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end28

do.body14:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd_rfwrite_cr_locked.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@zd_rfwrite_cr_locked, %do.end)) #8
          to label %if.then25 [label %do.end], !srcloc !274

if.then25:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zd_rfwrite_cr_locked.__UNIQUE_ID_ddebug373, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i32 noundef 1498, ptr noundef nonnull @.str.11) #8
  br label %do.end

do.end:                                           ; preds = %if.then25, %do.body14
  tail call void @dump_stack() #11
  br label %do.end28

do.end28:                                         ; preds = %do.end, %entry.do.end28_crit_edge
  %call29 = call i32 @zd_iowrite16a_locked(ptr noundef %chip, ptr noundef nonnull %ioreqs, i32 noundef 3)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ioreqs) #8
  ret i32 %call29
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zd_rfwritev_cr_locked(ptr noundef %chip, ptr nocapture noundef readonly %values, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  %ioreqs.i = alloca [3 x %struct.zd_ioreq16], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp5.not = icmp eq i32 %count, 0
  br i1 %cmp5.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %0 = getelementptr inbounds %struct.zd_ioreq16, ptr %ioreqs.i, i32 0, i32 1
  %1 = getelementptr inbounds [3 x %struct.zd_ioreq16], ptr %ioreqs.i, i32 0, i32 1
  %2 = getelementptr inbounds [3 x %struct.zd_ioreq16], ptr %ioreqs.i, i32 0, i32 1, i32 1
  %3 = getelementptr inbounds [3 x %struct.zd_ioreq16], ptr %ioreqs.i, i32 0, i32 2
  %4 = getelementptr inbounds [3 x %struct.zd_ioreq16], ptr %ioreqs.i, i32 0, i32 2, i32 1
  %mutex.i = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 2
  br label %for.body

for.cond:                                         ; preds = %zd_rfwrite_cr_locked.exit
  %inc = add nuw i32 %i.06, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.06 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %values, i32 %i.06
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ioreqs.i) #8
  %7 = ptrtoint ptr %ioreqs.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -27696, ptr %ioreqs.i, align 2
  %shr.i = lshr i32 %6, 16
  %8 = trunc i32 %shr.i to i16
  %conv.i = and i16 %8, 255
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv.i, ptr %0, align 2
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -27700, ptr %1, align 2
  %11 = trunc i32 %6 to i16
  %12 = lshr i16 %11, 8
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %2, align 2
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 -27704, ptr %3, align 2
  %conv11.i = and i16 %11, 255
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv11.i, ptr %4, align 2
  %call.i = call zeroext i1 @mutex_is_locked(ptr noundef %mutex.i) #8
  br i1 %call.i, label %for.body.zd_rfwrite_cr_locked.exit_crit_edge, label %do.body14.i, !prof !275

for.body.zd_rfwrite_cr_locked.exit_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %zd_rfwrite_cr_locked.exit

do.body14.i:                                      ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd_rfwrite_cr_locked.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@zd_rfwritev_cr_locked, %do.end.i)) #8
          to label %if.then25.i [label %do.end.i], !srcloc !274

if.then25.i:                                      ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zd_rfwrite_cr_locked.__UNIQUE_ID_ddebug373, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i32 noundef 1498, ptr noundef nonnull @.str.11) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then25.i, %do.body14.i
  call void @dump_stack() #11
  br label %zd_rfwrite_cr_locked.exit

zd_rfwrite_cr_locked.exit:                        ; preds = %do.end.i, %for.body.zd_rfwrite_cr_locked.exit_crit_edge
  %call29.i = call i32 @zd_iowrite16a_locked(ptr noundef %chip, ptr noundef nonnull %ioreqs.i, i32 noundef 3) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ioreqs.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool.not = icmp eq i32 %call29.i, 0
  br i1 %tobool.not, label %for.cond, label %zd_rfwrite_cr_locked.exit.cleanup_crit_edge

zd_rfwrite_cr_locked.exit.cleanup_crit_edge:      ; preds = %zd_rfwrite_cr_locked.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %zd_rfwrite_cr_locked.exit.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ %call29.i, %zd_rfwrite_cr_locked.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zd_chip_set_multicast_hash(ptr noundef %chip, ptr nocapture noundef readonly %hash) local_unnamed_addr #0 align 64 {
entry:
  %ioreqs = alloca [2 x %struct.zd_ioreq32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ioreqs) #8
  %0 = call ptr @memset(ptr %ioreqs, i32 255, i32 12)
  %1 = ptrtoint ptr %ioreqs to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -27100, ptr %ioreqs, align 4
  %value = getelementptr inbounds %struct.zd_ioreq32, ptr %ioreqs, i32 0, i32 1
  %2 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hash, align 4
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %value, align 4
  %arrayinit.element = getelementptr inbounds %struct.zd_ioreq32, ptr %ioreqs, i32 1
  %5 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -27096, ptr %arrayinit.element, align 4
  %value2 = getelementptr inbounds %struct.zd_ioreq32, ptr %ioreqs, i32 1, i32 1
  %high = getelementptr inbounds %struct.zd_mc_hash, ptr %hash, i32 0, i32 1
  %6 = ptrtoint ptr %high to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %high, align 4
  %8 = ptrtoint ptr %value2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value2, align 4
  %mutex.i = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #8
  %call.i = call i32 @zd_iowrite32a_locked(ptr noundef %chip, ptr noundef nonnull %ioreqs, i32 noundef 2) #8
  tail call void @mutex_unlock(ptr noundef %mutex.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ioreqs) #8
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @zd_chip_get_tsf(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  %values = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %values) #8
  %0 = ptrtoint ptr %values to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %values, align 4, !annotation !276
  %1 = getelementptr inbounds [2 x i32], ptr %values, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !276
  %mutex = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %call = call i32 @zd_ioread32v_locked(ptr noundef %chip, ptr noundef nonnull %values, ptr noundef nonnull @zd_chip_get_tsf.aw_pt_bi_addr, i32 noundef 2)
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %1, align 4
  %conv = zext i32 %4 to i64
  %shl = shl nuw i64 %conv, 32
  %5 = ptrtoint ptr %values to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %values, align 4
  %conv3 = zext i32 %6 to i64
  %or = or i64 %shl, %conv3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ %or, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %values) #8
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zd_usb_ioread16v(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zd_usb_iowrite16v(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @zd_rf_name(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hw_init_hmac(ptr noundef %chip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 2
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %mutex) #8
  br i1 %call, label %entry.do.end17_crit_edge, label %do.body3, !prof !275

entry.do.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end17

do.body3:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hw_init_hmac.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hw_init_hmac, %do.end)) #8
          to label %if.then14 [label %do.end], !srcloc !274

if.then14:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hw_init_hmac.__UNIQUE_ID_ddebug367, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i32 noundef 823, ptr noundef nonnull @.str.11) #8
  br label %do.end

do.end:                                           ; preds = %if.then14, %do.body3
  tail call void @dump_stack() #11
  br label %do.end17

do.end17:                                         ; preds = %do.end, %entry.do.end17_crit_edge
  %call18 = tail call i32 @zd_iowrite32a_locked(ptr noundef %chip, ptr noundef nonnull @hw_init_hmac.ioreqs, i32 noundef 20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %do.end17.cleanup_crit_edge

do.end17.cleanup_crit_edge:                       ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end21:                                         ; preds = %do.end17
  %is_zd1211b.i = getelementptr inbounds %struct.zd_usb, ptr %chip, i32 0, i32 8
  %0 = ptrtoint ptr %is_zd1211b.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %is_zd1211b.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool23.not = icmp sgt i8 %bf.load.i, -1
  %intf.i31 = getelementptr inbounds %struct.zd_usb, ptr %chip, i32 0, i32 3
  %1 = ptrtoint ptr %intf.i31 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %intf.i31, align 4
  %dev.i32 = getelementptr inbounds %struct.usb_interface, ptr %2, i32 0, i32 7
  br i1 %tobool23.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end21
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev.i32, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.70) #11
  %call.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mutex) #8
  br i1 %call.i, label %cond.true.zd1211b_hw_init_hmac.exit_crit_edge, label %do.body4.i, !prof !275

cond.true.zd1211b_hw_init_hmac.exit_crit_edge:    ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %zd1211b_hw_init_hmac.exit

do.body4.i:                                       ; preds = %cond.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd1211b_hw_init_hmac.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hw_init_hmac, %do.end16.i)) #8
          to label %if.then15.i [label %do.end16.i], !srcloc !274

if.then15.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zd1211b_hw_init_hmac.__UNIQUE_ID_ddebug366, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i32 noundef 793, ptr noundef nonnull @.str.11) #8
  br label %do.end16.i

do.end16.i:                                       ; preds = %if.then15.i, %do.body4.i
  tail call void @dump_stack() #11
  br label %zd1211b_hw_init_hmac.exit

zd1211b_hw_init_hmac.exit:                        ; preds = %do.end16.i, %cond.true.zd1211b_hw_init_hmac.exit_crit_edge
  %call19.i = tail call i32 @zd_iowrite32a_locked(ptr noundef %chip, ptr noundef nonnull @zd1211b_hw_init_hmac.ioreqs, i32 noundef 9) #8
  br label %cleanup

cond.false:                                       ; preds = %if.end21
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev.i32, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.71) #11
  %call.i34 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mutex) #8
  br i1 %call.i34, label %cond.false.zd1211_hw_init_hmac.exit_crit_edge, label %do.body4.i35, !prof !275

cond.false.zd1211_hw_init_hmac.exit_crit_edge:    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %zd1211_hw_init_hmac.exit

do.body4.i35:                                     ; preds = %cond.false
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd1211_hw_init_hmac.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hw_init_hmac, %do.end16.i37)) #8
          to label %if.then15.i36 [label %do.end16.i37], !srcloc !274

if.then15.i36:                                    ; preds = %do.body4.i35
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zd1211_hw_init_hmac.__UNIQUE_ID_ddebug365, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i32 noundef 774, ptr noundef nonnull @.str.11) #8
  br label %do.end16.i37

do.end16.i37:                                     ; preds = %if.then15.i36, %do.body4.i35
  tail call void @dump_stack() #11
  br label %zd1211_hw_init_hmac.exit

zd1211_hw_init_hmac.exit:                         ; preds = %do.end16.i37, %cond.false.zd1211_hw_init_hmac.exit_crit_edge
  %call19.i38 = tail call i32 @zd_iowrite32a_locked(ptr noundef %chip, ptr noundef nonnull @zd1211_hw_init_hmac.ioreqs, i32 noundef 2) #8
  br label %cleanup

cleanup:                                          ; preds = %zd1211_hw_init_hmac.exit, %zd1211b_hw_init_hmac.exit, %do.end17.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %do.end17.cleanup_crit_edge ], [ %call19.i, %zd1211b_hw_init_hmac.exit ], [ %call19.i38, %zd1211_hw_init_hmac.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @patch_cr157(ptr noundef %chip) unnamed_addr #0 align 64 {
entry:
  %ioreq.i = alloca %struct.zd_ioreq32, align 8
  %addr.addr.i.i = alloca i16, align 2
  %value = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %value) #8
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %value, align 2, !annotation !276
  %patch_cr157 = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 8
  %1 = ptrtoint ptr %patch_cr157 to i32
  call void @__asan_load2_noabort(i32 %1)
  %bf.load = load i16, ptr %patch_cr157, align 2
  %2 = and i16 %bf.load, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex.i = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 2
  %call.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mutex.i) #8
  br i1 %call.i, label %if.end.zd_ioread16_locked.exit_crit_edge, label %do.body3.i, !prof !275

if.end.zd_ioread16_locked.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %zd_ioread16_locked.exit

do.body3.i:                                       ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd_ioread16_locked.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@patch_cr157, %do.end.i)) #8
          to label %if.then14.i [label %do.end.i], !srcloc !274

if.then14.i:                                      ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zd_ioread16_locked.__UNIQUE_ID_ddebug354, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.37, i32 noundef 807, ptr noundef nonnull @.str.11) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then14.i, %do.body3.i
  tail call void @dump_stack() #11
  br label %zd_ioread16_locked.exit

zd_ioread16_locked.exit:                          ; preds = %do.end.i, %if.end.zd_ioread16_locked.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr.addr.i.i) #8
  %3 = ptrtoint ptr %addr.addr.i.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1988, ptr %addr.addr.i.i, align 2
  %call.i.i = call i32 @zd_usb_ioread16v(ptr noundef %chip, ptr noundef nonnull %value, ptr noundef nonnull %addr.addr.i.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr.addr.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not, label %do.end, label %zd_ioread16_locked.exit.cleanup_crit_edge

zd_ioread16_locked.exit.cleanup_crit_edge:        ; preds = %zd_ioread16_locked.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %zd_ioread16_locked.exit
  %intf = getelementptr inbounds %struct.zd_usb, ptr %chip, i32 0, i32 3
  %4 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %value, align 2
  %8 = lshr i16 %7, 8
  %9 = zext i16 %8 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef %9) #11
  %10 = ptrtoint ptr %value to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %value, align 2
  %12 = lshr i16 %11, 8
  %13 = zext i16 %12 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ioreq.i) #8
  %14 = ptrtoint ptr %ioreq.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 -7893402771896926209, ptr %ioreq.i, align 8, !annotation !276
  %value2.i = getelementptr inbounds %struct.zd_ioreq32, ptr %ioreq.i, i32 0, i32 1
  %15 = ptrtoint ptr %value2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %13, ptr %value2.i, align 4
  call void @zd_usb_iowrite16v_async_start(ptr noundef %chip) #8
  %call.i.i12 = call fastcc i32 @_zd_iowrite32v_async_locked(ptr noundef %chip, ptr noundef nonnull %ioreq.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i12)
  %tobool.not.i.i = icmp eq i32 %call.i.i12, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i.i = call i32 @zd_usb_iowrite16v_async_end(ptr noundef %chip, i32 noundef 0) #8
  br label %zd_iowrite32_locked.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i.i = call i32 @zd_usb_iowrite16v_async_end(ptr noundef %chip, i32 noundef 50) #8
  br label %zd_iowrite32_locked.exit

zd_iowrite32_locked.exit:                         ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i12, %if.then.i.i ], [ %call4.i.i, %if.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ioreq.i) #8
  br label %cleanup

cleanup:                                          ; preds = %zd_iowrite32_locked.exit, %zd_ioread16_locked.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.i, %zd_iowrite32_locked.exit ], [ 0, %entry.cleanup_crit_edge ], [ %call.i.i, %zd_ioread16_locked.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value) #8
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_values(ptr noundef %chip, ptr nocapture noundef writeonly %values, i16 noundef zeroext %e2p_addr, i32 noundef %guard) unnamed_addr #0 align 64 {
entry:
  %addr.addr.i = alloca i16, align 2
  %v = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v) #8
  %0 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %v, align 4, !annotation !276
  %mutex = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 2
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %mutex) #8
  br i1 %call, label %entry.do.end17_crit_edge, label %do.body3, !prof !275

entry.do.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end17

do.body3:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_values.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@read_values, %do.end)) #8
          to label %if.then14 [label %do.end], !srcloc !274

if.then14:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @read_values.__UNIQUE_ID_ddebug361, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i32 noundef 435, ptr noundef nonnull @.str.11) #8
  br label %do.end

do.end:                                           ; preds = %if.then14, %do.body3
  tail call void @dump_stack() #11
  br label %do.end17

do.end17:                                         ; preds = %do.end, %entry.do.end17_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr.addr.i)
  %1 = ptrtoint ptr %addr.addr.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %e2p_addr, ptr %addr.addr.i, align 2
  %call.i10 = call i32 @zd_ioread32v_locked(ptr noundef %chip, ptr noundef nonnull %v, ptr noundef nonnull %addr.addr.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10)
  %tobool20.not11 = icmp eq i32 %call.i10, 0
  br i1 %tobool20.not11, label %if.end22.preheader, label %do.end17.cleanup_crit_edge

do.end17.cleanup_crit_edge:                       ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22.preheader:                               ; preds = %do.end17
  %2 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %v, align 4
  %sub = sub i32 %3, %guard
  store i32 %sub, ptr %v, align 4
  %conv26 = trunc i32 %sub to i8
  %4 = ptrtoint ptr %values to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv26, ptr %values, align 1
  %shr = lshr i32 %sub, 8
  %conv27 = trunc i32 %shr to i8
  %arrayidx29 = getelementptr i8, ptr %values, i32 1
  %5 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv27, ptr %arrayidx29, align 1
  %shr30 = lshr i32 %sub, 16
  %conv31 = trunc i32 %shr30 to i8
  %arrayidx33 = getelementptr i8, ptr %values, i32 2
  %6 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv31, ptr %arrayidx33, align 1
  %shr34 = lshr i32 %sub, 24
  %conv35 = trunc i32 %shr34 to i8
  %arrayidx37 = getelementptr i8, ptr %values, i32 3
  %7 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv35, ptr %arrayidx37, align 1
  %conv18 = add i16 %e2p_addr, 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr.addr.i)
  %8 = ptrtoint ptr %addr.addr.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv18, ptr %addr.addr.i, align 2
  %call.i = call i32 @zd_ioread32v_locked(ptr noundef %chip, ptr noundef nonnull %v, ptr noundef nonnull %addr.addr.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool20.not = icmp eq i32 %call.i, 0
  br i1 %tobool20.not, label %if.end22.1, label %if.end22.preheader.cleanup_crit_edge

if.end22.preheader.cleanup_crit_edge:             ; preds = %if.end22.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.preheader:                               ; preds = %if.end22.2
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %v, align 4
  %sub.3 = sub i32 %10, %guard
  store i32 %sub.3, ptr %v, align 4
  %conv43 = trunc i32 %sub.3 to i8
  %arrayidx44 = getelementptr i8, ptr %values, i32 12
  %11 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv43, ptr %arrayidx44, align 1
  %shr42.1 = lshr i32 %sub.3, 8
  %conv43.1 = trunc i32 %shr42.1 to i8
  %arrayidx44.1 = getelementptr i8, ptr %values, i32 13
  %12 = ptrtoint ptr %arrayidx44.1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv43.1, ptr %arrayidx44.1, align 1
  br label %cleanup

if.end22.1:                                       ; preds = %if.end22.preheader
  %13 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %v, align 4
  %sub.1 = sub i32 %14, %guard
  store i32 %sub.1, ptr %v, align 4
  %conv26.1 = trunc i32 %sub.1 to i8
  %arrayidx.1 = getelementptr i8, ptr %values, i32 4
  %15 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv26.1, ptr %arrayidx.1, align 1
  %shr.1 = lshr i32 %sub.1, 8
  %conv27.1 = trunc i32 %shr.1 to i8
  %arrayidx29.1 = getelementptr i8, ptr %values, i32 5
  %16 = ptrtoint ptr %arrayidx29.1 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv27.1, ptr %arrayidx29.1, align 1
  %shr30.1 = lshr i32 %sub.1, 16
  %conv31.1 = trunc i32 %shr30.1 to i8
  %arrayidx33.1 = getelementptr i8, ptr %values, i32 6
  %17 = ptrtoint ptr %arrayidx33.1 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv31.1, ptr %arrayidx33.1, align 1
  %shr34.1 = lshr i32 %sub.1, 24
  %conv35.1 = trunc i32 %shr34.1 to i8
  %arrayidx37.1 = getelementptr i8, ptr %values, i32 7
  %18 = ptrtoint ptr %arrayidx37.1 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv35.1, ptr %arrayidx37.1, align 1
  %conv18.1 = add i16 %e2p_addr, 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr.addr.i)
  %19 = ptrtoint ptr %addr.addr.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv18.1, ptr %addr.addr.i, align 2
  %call.i.1 = call i32 @zd_ioread32v_locked(ptr noundef %chip, ptr noundef nonnull %v, ptr noundef nonnull %addr.addr.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool20.not.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool20.not.1, label %if.end22.2, label %if.end22.1.cleanup_crit_edge

if.end22.1.cleanup_crit_edge:                     ; preds = %if.end22.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22.2:                                       ; preds = %if.end22.1
  %20 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %v, align 4
  %sub.2 = sub i32 %21, %guard
  store i32 %sub.2, ptr %v, align 4
  %conv26.2 = trunc i32 %sub.2 to i8
  %arrayidx.2 = getelementptr i8, ptr %values, i32 8
  %22 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv26.2, ptr %arrayidx.2, align 1
  %shr.2 = lshr i32 %sub.2, 8
  %conv27.2 = trunc i32 %shr.2 to i8
  %arrayidx29.2 = getelementptr i8, ptr %values, i32 9
  %23 = ptrtoint ptr %arrayidx29.2 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv27.2, ptr %arrayidx29.2, align 1
  %shr30.2 = lshr i32 %sub.2, 16
  %conv31.2 = trunc i32 %shr30.2 to i8
  %arrayidx33.2 = getelementptr i8, ptr %values, i32 10
  %24 = ptrtoint ptr %arrayidx33.2 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv31.2, ptr %arrayidx33.2, align 1
  %shr34.2 = lshr i32 %sub.2, 24
  %conv35.2 = trunc i32 %shr34.2 to i8
  %arrayidx37.2 = getelementptr i8, ptr %values, i32 11
  %25 = ptrtoint ptr %arrayidx37.2 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv35.2, ptr %arrayidx37.2, align 1
  %conv18.2 = add i16 %e2p_addr, 6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr.addr.i)
  %26 = ptrtoint ptr %addr.addr.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv18.2, ptr %addr.addr.i, align 2
  %call.i.2 = call i32 @zd_ioread32v_locked(ptr noundef %chip, ptr noundef nonnull %v, ptr noundef nonnull %addr.addr.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %tobool20.not.2 = icmp eq i32 %call.i.2, 0
  br i1 %tobool20.not.2, label %for.body.preheader, label %if.end22.2.cleanup_crit_edge

if.end22.2.cleanup_crit_edge:                     ; preds = %if.end22.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %if.end22.2.cleanup_crit_edge, %if.end22.1.cleanup_crit_edge, %for.body.preheader, %if.end22.preheader.cleanup_crit_edge, %do.end17.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i10, %do.end17.cleanup_crit_edge ], [ 0, %for.body.preheader ], [ %call.i, %if.end22.preheader.cleanup_crit_edge ], [ %call.i.1, %if.end22.1.cleanup_crit_edge ], [ %call.i.2, %if.end22.2.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zd_usb_scnprint_id(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zd_rf_scnprint_id(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zd_rf_patch_6m_band_edge(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zd_usb_rfwrite(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 129)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 129)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !30, !32, !34, !36, !38, !40, !41, !42, !43, !45, !46, !48, !49, !50, !51, !53, !54, !55, !57, !58, !60, !61, !63, !64, !66, !67, !68, !69, !71, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83, !85, !86, !88, !90, !91, !92, !94, !95, !97, !98, !99, !101, !102, !104, !105, !107, !108, !109, !110, !112, !113, !114, !116, !117, !119, !121, !123, !125, !127, !128, !129, !130, !132, !133, !134, !136, !137, !139, !140, !141, !143, !144, !146, !147, !149, !150, !151, !153, !154, !155, !157, !158, !159, !161, !163, !165, !166, !167, !169, !171, !172, !173, !175, !176, !177, !178, !180, !182, !183, !185, !187, !188, !189, !191, !193, !195, !196, !197, !199, !201, !202, !203, !204, !205, !207, !209, !210, !211, !212, !214, !215, !216, !218, !219, !220, !222, !223, !224, !226, !227, !228, !230, !231, !233, !235, !236, !237, !238, !240, !242, !244, !246, !248, !250, !252, !254, !255, !257, !258, !260, !261, !263}
!llvm.module.flags = !{!264, !265, !266, !267, !268, !269, !270, !271}
!llvm.ident = !{!272}

!0 = !{ptr @zd_chip_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 27, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 34, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @zd_chip_clear.__UNIQUE_ID_ddebug357, !4, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!9 = !{ptr @.str.5, !4, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 118, i32 3}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.9, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @zd_ioread32v_locked._entry, !11, !"_entry", i1 false, i1 false}
!16 = !{ptr @zd_ioread32v_locked._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 190, i32 2}
!19 = !{ptr @zd_iowrite16a_locked.__UNIQUE_ID_ddebug359, !18, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!20 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 208, i32 4}
!23 = !{ptr @zd_iowrite16a_locked._entry, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @zd_iowrite16a_locked._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 245, i32 4}
!27 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @zd_iowrite32a_locked._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @zd_iowrite32a_locked._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @zd_write_mac_addr.reqs, !31, !"reqs", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 393, i32 33}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 398, i32 56}
!34 = !{ptr @zd_write_bssid.reqs, !35, !"reqs", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 403, i32 33}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 408, i32 53}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 423, i32 2}
!40 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @zd_read_regdomain._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @zd_read_regdomain._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 510, i32 2}
!45 = !{ptr @zd_chip_lock_phy_regs.__UNIQUE_ID_ddebug362, !44, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 513, i32 3}
!48 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @zd_chip_lock_phy_regs._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @zd_chip_lock_phy_regs._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 521, i32 3}
!53 = !{ptr @zd_chip_lock_phy_regs._entry.22, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @zd_chip_lock_phy_regs._entry_ptr.24, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 530, i32 2}
!57 = !{ptr @zd_chip_unlock_phy_regs.__UNIQUE_ID_ddebug363, !56, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!58 = !{ptr @zd_chip_unlock_phy_regs._entry, !59, !"_entry", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 533, i32 3}
!60 = !{ptr @zd_chip_unlock_phy_regs._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @zd_chip_unlock_phy_regs._entry.26, !62, !"_entry", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 542, i32 3}
!63 = !{ptr @zd_chip_unlock_phy_regs._entry_ptr.27, !62, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 590, i32 2}
!66 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @zd_chip_generic_patch_6m_band._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @zd_chip_generic_patch_6m_band._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 1052, i32 2}
!71 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @zd_chip_set_rts_cts_rate_locked._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @zd_chip_set_rts_cts_rate_locked._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 1108, i32 2}
!76 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @zd_chip_read_mac_addr_fw._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @zd_chip_read_mac_addr_fw._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 1118, i32 2}
!81 = !{ptr @zd_chip_init_hw._entry, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @zd_chip_init_hw._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 1498, i32 2}
!85 = !{ptr @zd_rfwrite_cr_locked.__UNIQUE_ID_ddebug373, !84, !"__UNIQUE_ID_ddebug373", i1 false, i1 false}
!86 = !{ptr @zd_chip_get_tsf.aw_pt_bi_addr, !87, !"aw_pt_bi_addr", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 1531, i32 25}
!88 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.h", i32 800, i32 2}
!90 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @zd_ioread16v_locked.__UNIQUE_ID_ddebug353, !89, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!92 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 141, i32 2}
!94 = !{ptr @_zd_iowrite32v_async_locked.__UNIQUE_ID_ddebug358, !93, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!95 = !{ptr @.str.39, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 163, i32 3}
!97 = !{ptr @_zd_iowrite32v_async_locked._entry, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @_zd_iowrite32v_async_locked._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.40, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.h", i32 807, i32 2}
!101 = !{ptr @zd_ioread16_locked.__UNIQUE_ID_ddebug354, !100, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!102 = !{ptr @.str.41, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.h", i32 825, i32 2}
!104 = !{ptr @zd_iowrite16_locked.__UNIQUE_ID_ddebug355, !103, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!105 = !{ptr @.str.42, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 377, i32 3}
!107 = !{ptr @.str.43, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @zd_write_mac_addr_common._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @zd_write_mac_addr_common._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.45, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 379, i32 3}
!112 = !{ptr @zd_write_mac_addr_common._entry.44, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @zd_write_mac_addr_common._entry_ptr.46, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.47, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 888, i32 2}
!116 = !{ptr @set_beacon_interval.__UNIQUE_ID_ddebug368, !115, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!117 = !{ptr @get_aw_pt_bi.aw_pt_bi_addr, !118, !"aw_pt_bi_addr", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 841, i32 25}
!119 = !{ptr @.str.48, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 975, i32 34}
!121 = !{ptr @.str.49, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 978, i32 31}
!123 = !{ptr @.str.50, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 981, i32 37}
!125 = !{ptr @.str.51, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 961, i32 3}
!127 = !{ptr @.str.52, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @dump_cr._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @dump_cr._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.54, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 966, i32 2}
!132 = !{ptr @dump_cr._entry.53, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @dump_cr._entry_ptr.55, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.56, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 1094, i32 2}
!136 = !{ptr @read_fw_regs_offset.__UNIQUE_ID_ddebug371, !135, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!137 = !{ptr @.str.57, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 1099, i32 2}
!139 = !{ptr @read_fw_regs_offset._entry, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @read_fw_regs_offset._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.58, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 1033, i32 2}
!143 = !{ptr @set_mandatory_rates.__UNIQUE_ID_ddebug370, !142, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!144 = !{ptr @.str.59, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 322, i32 2}
!146 = !{ptr @read_pod.__UNIQUE_ID_ddebug360, !145, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!147 = !{ptr @.str.60, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 326, i32 2}
!149 = !{ptr @read_pod._entry, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @read_pod._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.62, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 343, i32 2}
!153 = !{ptr @read_pod._entry.61, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @read_pod._entry_ptr.63, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.64, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 934, i32 2}
!157 = !{ptr @hw_init._entry, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @hw_init._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @hw_init.__UNIQUE_ID_ddebug369, !160, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!160 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 935, i32 2}
!161 = !{ptr @zd1211b_hw_reset_phy.ioreqs, !162, !"ioreqs", i1 false, i1 false}
!162 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 685, i32 33}
!163 = !{ptr @.str.65, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 746, i32 2}
!165 = !{ptr @zd1211b_hw_reset_phy._entry, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @zd1211b_hw_reset_phy._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @zd1211_hw_reset_phy.ioreqs, !168, !"ioreqs", i1 false, i1 false}
!168 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 596, i32 33}
!169 = !{ptr @.str.66, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 664, i32 2}
!171 = !{ptr @zd1211_hw_reset_phy._entry, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @zd1211_hw_reset_phy._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.67, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 559, i32 2}
!175 = !{ptr @.str.68, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @patch_cr157._entry, !174, !"_entry", i1 false, i1 false}
!177 = !{ptr @patch_cr157._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @hw_init_hmac.ioreqs, !179, !"ioreqs", i1 false, i1 false}
!179 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 800, i32 33}
!180 = !{ptr @.str.69, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 823, i32 2}
!182 = !{ptr @hw_init_hmac.__UNIQUE_ID_ddebug367, !181, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!183 = !{ptr @zd1211b_hw_init_hmac.ioreqs, !184, !"ioreqs", i1 false, i1 false}
!184 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 780, i32 33}
!185 = !{ptr @.str.70, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 792, i32 2}
!187 = !{ptr @zd1211b_hw_init_hmac._entry, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @zd1211b_hw_init_hmac._entry_ptr, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @zd1211b_hw_init_hmac.__UNIQUE_ID_ddebug366, !190, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!190 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 793, i32 2}
!191 = !{ptr @zd1211_hw_init_hmac.ioreqs, !192, !"ioreqs", i1 false, i1 false}
!192 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 768, i32 33}
!193 = !{ptr @.str.71, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 773, i32 2}
!195 = !{ptr @zd1211_hw_init_hmac._entry, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @zd1211_hw_init_hmac._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @zd1211_hw_init_hmac.__UNIQUE_ID_ddebug365, !198, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!198 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 774, i32 2}
!199 = !{ptr @.str.72, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 1022, i32 2}
!201 = !{ptr @.str.73, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @.str.74, !200, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @print_fw_version._entry, !200, !"_entry", i1 false, i1 false}
!204 = !{ptr @print_fw_version._entry_ptr, !200, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.75, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 1025, i32 4}
!207 = !{ptr @.str.76, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 999, i32 3}
!209 = !{ptr @.str.77, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @dump_fw_registers._entry, !208, !"_entry", i1 false, i1 false}
!211 = !{ptr @dump_fw_registers._entry_ptr, !208, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.79, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 1004, i32 2}
!214 = !{ptr @dump_fw_registers._entry.78, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @dump_fw_registers._entry_ptr.80, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.82, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 1005, i32 2}
!218 = !{ptr @dump_fw_registers._entry.81, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @dump_fw_registers._entry_ptr.83, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.85, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 1006, i32 2}
!222 = !{ptr @dump_fw_registers._entry.84, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @dump_fw_registers._entry_ptr.86, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.88, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 1007, i32 2}
!226 = !{ptr @dump_fw_registers._entry.87, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @dump_fw_registers._entry_ptr.89, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.90, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 435, i32 2}
!230 = !{ptr @read_values.__UNIQUE_ID_ddebug361, !229, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!231 = distinct !{null, !232, !"addresses", i1 false, i1 false}
!232 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 473, i32 25}
!233 = !{ptr @.str.91, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 74, i32 2}
!235 = !{ptr @.str.92, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @print_id._entry, !234, !"_entry", i1 false, i1 false}
!237 = !{ptr @print_id._entry_ptr, !234, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.93, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 52, i32 30}
!240 = !{ptr @.str.94, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 53, i32 36}
!242 = !{ptr @.str.95, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 53, i32 42}
!244 = !{ptr @.str.96, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 55, i32 35}
!246 = !{ptr @.str.97, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 59, i32 35}
!248 = !{ptr @.str.98, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 44, i32 33}
!250 = !{ptr @update_channel_integration_and_calibration.ioreqs, !251, !"ioreqs", i1 false, i1 false}
!251 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 1224, i32 34}
!252 = !{ptr @.str.99, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 1253, i32 2}
!254 = !{ptr @patch_cck_gain.__UNIQUE_ID_ddebug372, !253, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!255 = !{ptr @patch_cck_gain._entry, !256, !"_entry", i1 false, i1 false}
!256 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 1257, i32 2}
!257 = !{ptr @patch_cck_gain._entry_ptr, !256, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @.str.100, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.c", i32 570, i32 2}
!260 = !{ptr @patch_6m_band_edge.__UNIQUE_ID_ddebug364, !259, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!261 = !{ptr @.str.101, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.h", i32 854, i32 2}
!263 = !{ptr @zd_rfwrite_locked.__UNIQUE_ID_ddebug356, !262, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!264 = !{i32 1, !"wchar_size", i32 2}
!265 = !{i32 1, !"min_enum_size", i32 4}
!266 = !{i32 8, !"branch-target-enforcement", i32 0}
!267 = !{i32 8, !"sign-return-address", i32 0}
!268 = !{i32 8, !"sign-return-address-all", i32 0}
!269 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!270 = !{i32 7, !"uwtable", i32 1}
!271 = !{i32 7, !"frame-pointer", i32 2}
!272 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!273 = !{!"branch_weights", i32 1, i32 2000}
!274 = !{i64 2148729146, i64 2148729151, i64 2148729164, i64 2148729208, i64 2148729242, i64 2148729263}
!275 = !{!"branch_weights", i32 2000, i32 1}
!276 = !{!"auto-init"}
