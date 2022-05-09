; ModuleID = '/llk/IR_all_yes/drivers/mmc/core/mmc.c_pt.bc'
source_filename = "../drivers/mmc/core/mmc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mmc_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mmc_fixup = type { ptr, i64, i64, i32, i16, i16, i16, i32, ptr, ptr, i32 }
%struct.mmc_card = type { ptr, %struct.device, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i8, [4 x i32], [4 x i32], [2 x i32], [16 x i32], %struct.mmc_cid, %struct.mmc_csd, %struct.mmc_ext_csd, %struct.sd_scr, %struct.sd_ssr, %struct.sd_switch_caps, %struct.sd_ext_reg, %struct.sd_ext_reg, i32, %struct.atomic_t, %struct.sdio_cccr, %struct.sdio_cis, [7 x ptr], ptr, i8, i8, i32, ptr, ptr, i32, i32, i32, ptr, [7 x %struct.mmc_part], i32, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, %struct.fault_attr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, %struct.blk_crypto_profile, i8, [15 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.mmc_supply = type { ptr, ptr }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.blk_crypto_ll_ops = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }

@mmc_hs400_to_hs200._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1326, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s: %s failed, error %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mmc_hs400_to_hs200\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/mmc/core/mmc.c\00", [41 x i8] zeroinitializer }, align 32
@mmc_hs400_to_hs200._entry_ptr = internal global ptr @mmc_hs400_to_hs200._entry, section ".printk_index", align 4
@mmc_ops = internal constant { %struct.mmc_bus_ops, [44 x i8] } { %struct.mmc_bus_ops { ptr @mmc_remove, ptr @mmc_detect, ptr null, ptr @mmc_suspend, ptr @mmc_resume, ptr @mmc_runtime_suspend, ptr @mmc_runtime_resume, ptr @mmc_alive, ptr @mmc_shutdown, ptr @_mmc_hw_reset, ptr null, ptr @_mmc_cache_enabled, ptr @_mmc_flush_cache }, [44 x i8] zeroinitializer }, align 32
@mmc_attach_mmc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 2316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s: error %d whilst initialising MMC card\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mmc_attach_mmc\00", [17 x i8] zeroinitializer }, align 32
@mmc_attach_mmc._entry_ptr = internal global ptr @mmc_attach_mmc._entry, section ".printk_index", align 4
@mmc_select_hs400._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 1177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013%s: switch to high-speed from hs200 failed, err:%d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mmc_select_hs400\00", [47 x i8] zeroinitializer }, align 32
@mmc_select_hs400._entry_ptr = internal global ptr @mmc_select_hs400._entry, section ".printk_index", align 4
@mmc_select_hs400._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 1206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013%s: switch to bus width for hs400 failed, err:%d\0A\00", [44 x i8] zeroinitializer }, align 32
@mmc_select_hs400._entry_ptr.9 = internal global ptr @mmc_select_hs400._entry.7, section ".printk_index", align 4
@mmc_select_hs400._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.2, i32 1219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: switch to hs400 failed, err:%d\0A\00", [58 x i8] zeroinitializer }, align 32
@mmc_select_hs400._entry_ptr.12 = internal global ptr @mmc_select_hs400._entry.10, section ".printk_index", align 4
@mmc_select_hs400._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.6, ptr @.str.2, i32 1246, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mmc_select_hs400._entry_ptr.14 = internal global ptr @mmc_select_hs400._entry.13, section ".printk_index", align 4
@mmc_poweroff_notify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 1993, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s: Power Off Notification timed out, %u\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mmc_poweroff_notify\00", [44 x i8] zeroinitializer }, align 32
@mmc_poweroff_notify._entry_ptr = internal global ptr @mmc_poweroff_notify._entry, section ".printk_index", align 4
@mmc_runtime_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 2183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: error %d doing aggressive suspend\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mmc_runtime_suspend\00", [44 x i8] zeroinitializer }, align 32
@mmc_runtime_suspend._entry_ptr = internal global ptr @mmc_runtime_suspend._entry, section ".printk_index", align 4
@mmc_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 2198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: error %d doing runtime resume\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mmc_runtime_resume\00", [45 x i8] zeroinitializer }, align 32
@mmc_runtime_resume._entry_ptr = internal global ptr @mmc_runtime_resume._entry, section ".printk_index", align 4
@_mmc_flush_cache._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 2063, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013%s: cache flush error %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"_mmc_flush_cache\00", [47 x i8] zeroinitializer }, align 32
@_mmc_flush_cache._entry_ptr = internal global ptr @_mmc_flush_cache._entry, section ".printk_index", align 4
@use_spi_crc = external dso_local local_unnamed_addr global i8, align 1
@mmc_init_card.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 1, i8 -108, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmc_core\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mmc_init_card\00", [18 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Perhaps the card was replaced\0A\00", [61 x i8] zeroinitializer }, align 32
@mmc_type = internal global { %struct.device_type, [40 x i8] } { %struct.device_type { ptr null, ptr @mmc_std_groups, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mmc_init_card._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.2, i32 1820, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\014%s: Enabling HPI failed\0A\00", [37 x i8] zeroinitializer }, align 32
@mmc_init_card._entry_ptr = internal global ptr @mmc_init_card._entry, section ".printk_index", align 4
@mmc_init_card._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.24, ptr @.str.2, i32 1848, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014%s: Cache is supported, but failed to turn on (%d)\0A\00", [42 x i8] zeroinitializer }, align 32
@mmc_init_card._entry_ptr.29 = internal global ptr @mmc_init_card._entry.27, section ".printk_index", align 4
@mmc_init_card._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.24, ptr @.str.2, i32 1866, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\014%s: Enabling CMDQ failed\0A\00", [36 x i8] zeroinitializer }, align 32
@mmc_init_card._entry_ptr.32 = internal global ptr @mmc_init_card._entry.30, section ".printk_index", align 4
@mmc_init_card._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.24, ptr @.str.2, i32 1885, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s: Command Queue Engine enabled\0A\00", [60 x i8] zeroinitializer }, align 32
@mmc_init_card._entry_ptr.35 = internal global ptr @mmc_init_card._entry.33, section ".printk_index", align 4
@mmc_init_card._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.24, ptr @.str.2, i32 1889, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016%s: Host Software Queue enabled\0A\00", [61 x i8] zeroinitializer }, align 32
@mmc_init_card._entry_ptr.38 = internal global ptr @mmc_init_card._entry.36, section ".printk_index", align 4
@mmc_init_card._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.24, ptr @.str.2, i32 1897, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s: Host failed to negotiate down from 3.3V\0A\00", [49 x i8] zeroinitializer }, align 32
@mmc_init_card._entry_ptr.41 = internal global ptr @mmc_init_card._entry.39, section ".printk_index", align 4
@mmc_std_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @mmc_std_group, ptr null], [24 x i8] zeroinitializer }, align 32
@mmc_std_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @mmc_std_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@mmc_std_attrs = internal global { [26 x ptr], [56 x i8] } { [26 x ptr] [ptr @dev_attr_cid, ptr @dev_attr_csd, ptr @dev_attr_date, ptr @dev_attr_erase_size, ptr @dev_attr_preferred_erase_size, ptr @dev_attr_fwrev, ptr @dev_attr_ffu_capable, ptr @dev_attr_hwrev, ptr @dev_attr_manfid, ptr @dev_attr_name, ptr @dev_attr_oemid, ptr @dev_attr_prv, ptr @dev_attr_rev, ptr @dev_attr_pre_eol_info, ptr @dev_attr_life_time, ptr @dev_attr_serial, ptr @dev_attr_enhanced_area_offset, ptr @dev_attr_enhanced_area_size, ptr @dev_attr_raw_rpmb_size_mult, ptr @dev_attr_enhanced_rpmb_supported, ptr @dev_attr_rel_sectors, ptr @dev_attr_ocr, ptr @dev_attr_rca, ptr @dev_attr_dsr, ptr @dev_attr_cmdq_en, ptr null], [56 x i8] zeroinitializer }, align 32
@dev_attr_cid = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mmc_cid_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_csd = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mmc_csd_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_date = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mmc_date_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_erase_size = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mmc_erase_size_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_preferred_erase_size = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mmc_preferred_erase_size_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_fwrev = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mmc_fwrev_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ffu_capable = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mmc_ffu_capable_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_hwrev = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mmc_hwrev_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_manfid = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mmc_manfid_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_name = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mmc_name_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_oemid = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mmc_oemid_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_prv = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mmc_prv_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_rev = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mmc_rev_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_pre_eol_info = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.64, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mmc_pre_eol_info_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_life_time = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.66, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mmc_life_time_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_serial = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.68, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mmc_serial_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_enhanced_area_offset = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.70, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mmc_enhanced_area_offset_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_enhanced_area_size = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.72, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mmc_enhanced_area_size_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_raw_rpmb_size_mult = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.73, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mmc_raw_rpmb_size_mult_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_enhanced_rpmb_supported = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.75, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mmc_enhanced_rpmb_supported_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_rel_sectors = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.76, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mmc_rel_sectors_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ocr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.77, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mmc_ocr_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_rca = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.78, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mmc_rca_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_dsr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.79, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mmc_dsr_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_cmdq_en = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.80, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mmc_cmdq_en_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cid\00", [28 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%08x%08x%08x%08x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"csd\00", [28 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"date\00", [27 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%02d/%04d\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"erase_size\00", [21 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"preferred_erase_size\00", [43 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fwrev\00", [26 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0x%x\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"0x%*phN\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ffu_capable\00", [20 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hwrev\00", [26 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"manfid\00", [25 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%06x\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"oemid\00", [26 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%04x\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"prv\00", [28 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rev\00", [28 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pre_eol_info\00", [19 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%02x\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"life_time\00", [22 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"0x%02x 0x%02x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"serial\00", [25 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%08x\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"enhanced_area_offset\00", [43 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"enhanced_area_size\00", [45 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"raw_rpmb_size_mult\00", [45 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%#x\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"enhanced_rpmb_supported\00", [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rel_sectors\00", [20 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ocr\00", [28 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rca\00", [28 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dsr\00", [28 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cmdq_en\00", [24 x i8] zeroinitializer }, align 32
@mmc_decode_csd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.2, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s: unrecognised CSD structure version %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mmc_decode_csd\00", [17 x i8] zeroinitializer }, align 32
@mmc_decode_csd._entry_ptr = internal global ptr @mmc_decode_csd._entry, section ".printk_index", align 4
@taac_exp = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1, i32 10, i32 100, i32 1000, i32 10000, i32 100000, i32 1000000, i32 10000000], [32 x i8] zeroinitializer }, align 32
@taac_mant = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 0, i32 10, i32 12, i32 13, i32 15, i32 20, i32 25, i32 30, i32 35, i32 40, i32 45, i32 50, i32 55, i32 60, i32 70, i32 80], [32 x i8] zeroinitializer }, align 32
@tran_exp = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 10000, i32 100000, i32 1000000, i32 10000000, i32 0, i32 0, i32 0, i32 0], [32 x i8] zeroinitializer }, align 32
@tran_mant = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\00\0A\0C\0D\0F\14\19\1E#(-27<FP", [16 x i8] zeroinitializer }, align 32
@mmc_decode_cid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.2, i32 114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: card has unknown MMCA version %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mmc_decode_cid\00", [17 x i8] zeroinitializer }, align 32
@mmc_decode_cid._entry_ptr = internal global ptr @mmc_decode_cid._entry, section ".printk_index", align 4
@mmc_read_ext_csd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.2, i32 691, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\013%s: unable to read EXT_CSD on a possible high capacity card. Card will be ignored.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mmc_read_ext_csd\00", [47 x i8] zeroinitializer }, align 32
@mmc_read_ext_csd._entry_ptr = internal global ptr @mmc_read_ext_csd._entry, section ".printk_index", align 4
@mmc_read_ext_csd._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.86, ptr @.str.2, i32 694, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014%s: unable to read EXT_CSD, performance might suffer\0A\00", [40 x i8] zeroinitializer }, align 32
@mmc_read_ext_csd._entry_ptr.89 = internal global ptr @mmc_read_ext_csd._entry.87, section ".printk_index", align 4
@mmc_decode_ext_csd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.2, i32 375, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013%s: unrecognised EXT_CSD structure version %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mmc_decode_ext_csd\00", [45 x i8] zeroinitializer }, align 32
@mmc_decode_ext_csd._entry_ptr = internal global ptr @mmc_decode_ext_csd._entry, section ".printk_index", align 4
@.str.92 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmc-card\00", [23 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"broken-hpi\00", [21 x i8] zeroinitializer }, align 32
@mmc_ext_csd_fixups = internal constant { [3 x %struct.mmc_fixup], [56 x i8] } { [3 x %struct.mmc_fixup] [%struct.mmc_fixup { ptr null, i64 0, i64 -1, i32 144, i16 330, i16 -1, i16 -1, i32 5, ptr null, ptr @add_quirk, i32 8192 }, %struct.mmc_fixup { ptr null, i64 0, i64 -1, i32 254, i16 334, i16 -1, i16 -1, i32 6, ptr null, ptr @add_quirk, i32 8192 }, %struct.mmc_fixup zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"boot%d\00", [25 x i8] zeroinitializer }, align 32
@mmc_decode_ext_csd.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.91, ptr @.str.2, ptr @.str.95, i8 0, i8 -123, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: MAN_BKOPS_EN bit is set\0A\00", [35 x i8] zeroinitializer }, align 32
@mmc_decode_ext_csd.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.91, ptr @.str.2, ptr @.str.96, i8 0, i8 -121, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: AUTO_BKOPS_EN bit is set\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rpmb\00", [27 x i8] zeroinitializer }, align 32
@mmc_decode_ext_csd.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.91, ptr @.str.2, ptr @.str.98, i8 0, i8 -92, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: Command Queue supported depth %u\0A\00", [58 x i8] zeroinitializer }, align 32
@mmc_fixup_device.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.99, ptr @.str.100, ptr @.str.101, i8 0, i8 50, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mmc_fixup_device\00", [47 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/mmc/core/quirks.h\00", [38 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"calling %ps\0A\00", [19 x i8] zeroinitializer }, align 32
@mmc_manage_enhanced_area._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.2, i32 296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\014%s: defines enhanced area without partition setting complete\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mmc_manage_enhanced_area\00", [39 x i8] zeroinitializer }, align 32
@mmc_manage_enhanced_area._entry_ptr = internal global ptr @mmc_manage_enhanced_area._entry, section ".printk_index", align 4
@mmc_manage_gp_partitions._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.2, i32 338, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\014%s: has partition size defined without partition complete\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mmc_manage_gp_partitions\00", [39 x i8] zeroinitializer }, align 32
@mmc_manage_gp_partitions._entry_ptr = internal global ptr @mmc_manage_gp_partitions._entry, section ".printk_index", align 4
@.str.106 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gp%d\00", [27 x i8] zeroinitializer }, align 32
@mmc_select_hs400es._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.108, ptr @.str.2, i32 1376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s: switch to 8bit bus width failed, err:%d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mmc_select_hs400es\00", [45 x i8] zeroinitializer }, align 32
@mmc_select_hs400es._entry_ptr = internal global ptr @mmc_select_hs400es._entry, section ".printk_index", align 4
@mmc_select_hs400es._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.108, ptr @.str.2, i32 1388, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s: switch to hs for hs400es failed, err:%d\0A\00", [49 x i8] zeroinitializer }, align 32
@mmc_select_hs400es._entry_ptr.111 = internal global ptr @mmc_select_hs400es._entry.109, section ".printk_index", align 4
@mmc_select_hs400es._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.108, ptr @.str.2, i32 1407, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013%s: switch to bus width for hs400es failed, err:%d\0A\00", [42 x i8] zeroinitializer }, align 32
@mmc_select_hs400es._entry_ptr.114 = internal global ptr @mmc_select_hs400es._entry.112, section ".printk_index", align 4
@mmc_select_hs400es._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.108, ptr @.str.2, i32 1422, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: switch to hs400es failed, err:%d\0A\00", [56 x i8] zeroinitializer }, align 32
@mmc_select_hs400es._entry_ptr.117 = internal global ptr @mmc_select_hs400es._entry.115, section ".printk_index", align 4
@mmc_select_hs400es._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.108, ptr @.str.2, i32 1442, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mmc_select_hs400es._entry_ptr.119 = internal global ptr @mmc_select_hs400es._entry.118, section ".printk_index", align 4
@mmc_select_hs200._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.120, ptr @.str.2, i32 1511, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mmc_select_hs200\00", [47 x i8] zeroinitializer }, align 32
@mmc_select_hs200._entry_ptr = internal global ptr @mmc_select_hs200._entry, section ".printk_index", align 4
@mmc_select_hs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.122, ptr @.str.2, i32 1077, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014%s: switch to high-speed failed, err:%d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mmc_select_hs\00", [18 x i8] zeroinitializer }, align 32
@mmc_select_hs._entry_ptr = internal global ptr @mmc_select_hs._entry, section ".printk_index", align 4
@mmc_select_bus_width.ext_csd_bits = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 2, i32 1], [24 x i8] zeroinitializer }, align 32
@mmc_select_bus_width.bus_widths = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 3, i32 2], [24 x i8] zeroinitializer }, align 32
@mmc_select_bus_width._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.124, ptr @.str.2, i32 1057, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014%s: switch to bus width %d failed\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mmc_select_bus_width\00", [43 x i8] zeroinitializer }, align 32
@mmc_select_bus_width._entry_ptr = internal global ptr @mmc_select_bus_width._entry, section ".printk_index", align 4
@mmc_select_hs_ddr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.126, ptr @.str.2, i32 1109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: switch to bus width %d ddr failed\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mmc_select_hs_ddr\00", [46 x i8] zeroinitializer }, align 32
@mmc_select_hs_ddr._entry_ptr = internal global ptr @mmc_select_hs_ddr._entry, section ".printk_index", align 4
@mmc_select_powerclass._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.128, ptr @.str.2, i32 970, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014%s: power class selection to bus width %d ddr %d failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mmc_select_powerclass\00", [42 x i8] zeroinitializer }, align 32
@mmc_select_powerclass._entry_ptr = internal global ptr @mmc_select_powerclass._entry, section ".printk_index", align 4
@__mmc_select_powerclass._entry = internal constant %struct.pi_entry { ptr @.str.129, ptr @.str.130, ptr @.str.2, i32 922, ptr null, ptr null }, align 1
@.str.129 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014%s: Voltage range not supported for power class\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"__mmc_select_powerclass\00", [40 x i8] zeroinitializer }, align 32
@__mmc_select_powerclass._entry_ptr = internal global ptr @__mmc_select_powerclass._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967222]
@__sancov_gen_cov_switch_values.131 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967222]
@__sancov_gen_cov_switch_values.132 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967222]
@__sancov_gen_cov_switch_values.133 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967222]
@__sancov_gen_cov_switch_values.134 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967222]
@__sancov_gen_cov_switch_values.135 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967222]
@__sancov_gen_cov_switch_values.136 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967173]
@__sancov_gen_cov_switch_values.137 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.138 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967258, i64 4294967274, i64 4294967282]
@__sancov_gen_cov_switch_values.139 = internal global [12 x i64] [i64 10, i64 32, i64 128, i64 32768, i64 65536, i64 131072, i64 262144, i64 524288, i64 1048576, i64 2097152, i64 4194304, i64 8388608]
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 1325, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant [8 x i8] c"mmc_ops\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 2238, i32 33 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 2315, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 1176, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 1205, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 1218, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 1245, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 1992, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 2182, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 2197, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 2062, i32 4 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 1617, i32 4 }
@___asan_gen_.233 = private unnamed_addr constant [9 x i8] c"mmc_type\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 871, i32 27 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 1819, i32 4 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 1847, i32 4 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 1865, i32 4 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 1884, i32 5 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 1888, i32 5 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 1896, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant [15 x i8] c"mmc_std_groups\00", align 1
@___asan_gen_.275 = private unnamed_addr constant [14 x i8] c"mmc_std_group\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 869, i32 1 }
@___asan_gen_.278 = private unnamed_addr constant [14 x i8] c"mmc_std_attrs\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 841, i32 26 }
@___asan_gen_.281 = private unnamed_addr constant [13 x i8] c"dev_attr_cid\00", align 1
@___asan_gen_.284 = private unnamed_addr constant [13 x i8] c"dev_attr_csd\00", align 1
@___asan_gen_.287 = private unnamed_addr constant [14 x i8] c"dev_attr_date\00", align 1
@___asan_gen_.290 = private unnamed_addr constant [20 x i8] c"dev_attr_erase_size\00", align 1
@___asan_gen_.293 = private unnamed_addr constant [30 x i8] c"dev_attr_preferred_erase_size\00", align 1
@___asan_gen_.296 = private unnamed_addr constant [15 x i8] c"dev_attr_fwrev\00", align 1
@___asan_gen_.299 = private unnamed_addr constant [21 x i8] c"dev_attr_ffu_capable\00", align 1
@___asan_gen_.302 = private unnamed_addr constant [15 x i8] c"dev_attr_hwrev\00", align 1
@___asan_gen_.305 = private unnamed_addr constant [16 x i8] c"dev_attr_manfid\00", align 1
@___asan_gen_.308 = private unnamed_addr constant [14 x i8] c"dev_attr_name\00", align 1
@___asan_gen_.311 = private unnamed_addr constant [15 x i8] c"dev_attr_oemid\00", align 1
@___asan_gen_.314 = private unnamed_addr constant [13 x i8] c"dev_attr_prv\00", align 1
@___asan_gen_.317 = private unnamed_addr constant [13 x i8] c"dev_attr_rev\00", align 1
@___asan_gen_.320 = private unnamed_addr constant [22 x i8] c"dev_attr_pre_eol_info\00", align 1
@___asan_gen_.323 = private unnamed_addr constant [19 x i8] c"dev_attr_life_time\00", align 1
@___asan_gen_.326 = private unnamed_addr constant [16 x i8] c"dev_attr_serial\00", align 1
@___asan_gen_.329 = private unnamed_addr constant [30 x i8] c"dev_attr_enhanced_area_offset\00", align 1
@___asan_gen_.332 = private unnamed_addr constant [28 x i8] c"dev_attr_enhanced_area_size\00", align 1
@___asan_gen_.335 = private unnamed_addr constant [28 x i8] c"dev_attr_raw_rpmb_size_mult\00", align 1
@___asan_gen_.338 = private unnamed_addr constant [33 x i8] c"dev_attr_enhanced_rpmb_supported\00", align 1
@___asan_gen_.341 = private unnamed_addr constant [21 x i8] c"dev_attr_rel_sectors\00", align 1
@___asan_gen_.344 = private unnamed_addr constant [13 x i8] c"dev_attr_ocr\00", align 1
@___asan_gen_.347 = private unnamed_addr constant [13 x i8] c"dev_attr_rca\00", align 1
@___asan_gen_.350 = private unnamed_addr constant [13 x i8] c"dev_attr_dsr\00", align 1
@___asan_gen_.353 = private unnamed_addr constant [17 x i8] c"dev_attr_cmdq_en\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 779, i32 1 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 781, i32 1 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 783, i32 1 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 784, i32 1 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 785, i32 1 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 823, i32 8 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 816, i32 23 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 818, i32 23 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 786, i32 1 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 787, i32 1 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 788, i32 1 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 789, i32 1 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 790, i32 1 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 791, i32 1 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 792, i32 1 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 793, i32 1 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 794, i32 1 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 797, i32 1 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 798, i32 1 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 800, i32 1 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 801, i32 1 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 802, i32 1 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 804, i32 1 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 805, i32 1 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 806, i32 1 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 839, i32 8 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 807, i32 1 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 147, i32 3 }
@___asan_gen_.482 = private unnamed_addr constant [9 x i8] c"taac_exp\00", align 1
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 43, i32 27 }
@___asan_gen_.485 = private unnamed_addr constant [10 x i8] c"taac_mant\00", align 1
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 47, i32 27 }
@___asan_gen_.488 = private unnamed_addr constant [9 x i8] c"tran_exp\00", align 1
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 33, i32 27 }
@___asan_gen_.491 = private unnamed_addr constant [10 x i8] c"tran_mant\00", align 1
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 38, i32 28 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 113, i32 3 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 690, i32 4 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 693, i32 4 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 373, i32 4 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 382, i32 40 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 383, i32 42 }
@___asan_gen_.533 = private unnamed_addr constant [19 x i8] c"mmc_ext_csd_fixups\00", align 1
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 106, i32 46 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 452, i32 6 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 533, i32 5 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 539, i32 5 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 569, i32 5 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 656, i32 4 }
@___asan_gen_.558 = private unnamed_addr constant [29 x i8] c"../drivers/mmc/core/quirks.h\00", align 1
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 200, i32 3 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 295, i32 4 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 337, i32 5 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 350, i32 5 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 1375, i32 3 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 1387, i32 3 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 1406, i32 3 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 1421, i32 3 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 1441, i32 2 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 1510, i32 3 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 1076, i32 3 }
@___asan_gen_.626 = private unnamed_addr constant [13 x i8] c"ext_csd_bits\00", align 1
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 1000, i32 18 }
@___asan_gen_.629 = private unnamed_addr constant [11 x i8] c"bus_widths\00", align 1
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 1004, i32 18 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 1056, i32 4 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 1108, i32 3 }
@___asan_gen_.650 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 969, i32 3 }
@___asan_gen_.662 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.663 = private constant [26 x i8] c"../drivers/mmc/core/mmc.c\00", align 1
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 921, i32 3 }
@llvm.compiler.used = appending global [210 x ptr] [ptr @__mmc_select_powerclass._entry, ptr @__mmc_select_powerclass._entry_ptr, ptr @_mmc_flush_cache._entry, ptr @_mmc_flush_cache._entry_ptr, ptr @mmc_attach_mmc._entry, ptr @mmc_attach_mmc._entry_ptr, ptr @mmc_decode_cid._entry, ptr @mmc_decode_cid._entry_ptr, ptr @mmc_decode_csd._entry, ptr @mmc_decode_csd._entry_ptr, ptr @mmc_decode_ext_csd._entry, ptr @mmc_decode_ext_csd._entry_ptr, ptr @mmc_hs400_to_hs200._entry, ptr @mmc_hs400_to_hs200._entry_ptr, ptr @mmc_init_card._entry, ptr @mmc_init_card._entry.27, ptr @mmc_init_card._entry.30, ptr @mmc_init_card._entry.33, ptr @mmc_init_card._entry.36, ptr @mmc_init_card._entry.39, ptr @mmc_init_card._entry_ptr, ptr @mmc_init_card._entry_ptr.29, ptr @mmc_init_card._entry_ptr.32, ptr @mmc_init_card._entry_ptr.35, ptr @mmc_init_card._entry_ptr.38, ptr @mmc_init_card._entry_ptr.41, ptr @mmc_manage_enhanced_area._entry, ptr @mmc_manage_enhanced_area._entry_ptr, ptr @mmc_manage_gp_partitions._entry, ptr @mmc_manage_gp_partitions._entry_ptr, ptr @mmc_poweroff_notify._entry, ptr @mmc_poweroff_notify._entry_ptr, ptr @mmc_read_ext_csd._entry, ptr @mmc_read_ext_csd._entry.87, ptr @mmc_read_ext_csd._entry_ptr, ptr @mmc_read_ext_csd._entry_ptr.89, ptr @mmc_runtime_resume._entry, ptr @mmc_runtime_resume._entry_ptr, ptr @mmc_runtime_suspend._entry, ptr @mmc_runtime_suspend._entry_ptr, ptr @mmc_select_bus_width._entry, ptr @mmc_select_bus_width._entry_ptr, ptr @mmc_select_hs._entry, ptr @mmc_select_hs._entry_ptr, ptr @mmc_select_hs200._entry, ptr @mmc_select_hs200._entry_ptr, ptr @mmc_select_hs400._entry, ptr @mmc_select_hs400._entry.10, ptr @mmc_select_hs400._entry.13, ptr @mmc_select_hs400._entry.7, ptr @mmc_select_hs400._entry_ptr, ptr @mmc_select_hs400._entry_ptr.12, ptr @mmc_select_hs400._entry_ptr.14, ptr @mmc_select_hs400._entry_ptr.9, ptr @mmc_select_hs400es._entry, ptr @mmc_select_hs400es._entry.109, ptr @mmc_select_hs400es._entry.112, ptr @mmc_select_hs400es._entry.115, ptr @mmc_select_hs400es._entry.118, ptr @mmc_select_hs400es._entry_ptr, ptr @mmc_select_hs400es._entry_ptr.111, ptr @mmc_select_hs400es._entry_ptr.114, ptr @mmc_select_hs400es._entry_ptr.117, ptr @mmc_select_hs400es._entry_ptr.119, ptr @mmc_select_hs_ddr._entry, ptr @mmc_select_hs_ddr._entry_ptr, ptr @mmc_select_powerclass._entry, ptr @mmc_select_powerclass._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @mmc_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @mmc_type, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @mmc_std_groups, ptr @mmc_std_group, ptr @mmc_std_attrs, ptr @dev_attr_cid, ptr @dev_attr_csd, ptr @dev_attr_date, ptr @dev_attr_erase_size, ptr @dev_attr_preferred_erase_size, ptr @dev_attr_fwrev, ptr @dev_attr_ffu_capable, ptr @dev_attr_hwrev, ptr @dev_attr_manfid, ptr @dev_attr_name, ptr @dev_attr_oemid, ptr @dev_attr_prv, ptr @dev_attr_rev, ptr @dev_attr_pre_eol_info, ptr @dev_attr_life_time, ptr @dev_attr_serial, ptr @dev_attr_enhanced_area_offset, ptr @dev_attr_enhanced_area_size, ptr @dev_attr_raw_rpmb_size_mult, ptr @dev_attr_enhanced_rpmb_supported, ptr @dev_attr_rel_sectors, ptr @dev_attr_ocr, ptr @dev_attr_rca, ptr @dev_attr_dsr, ptr @dev_attr_cmdq_en, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @taac_exp, ptr @taac_mant, ptr @tran_exp, ptr @tran_mant, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.88, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @mmc_ext_csd_fixups, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.110, ptr @.str.113, ptr @.str.116, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @mmc_select_bus_width.ext_csd_bits, ptr @mmc_select_bus_width.bus_widths, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130], section "llvm.metadata"
@0 = internal global [175 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_hs400_to_hs200._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_attach_mmc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_select_hs400._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_select_hs400._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_select_hs400._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_select_hs400._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_poweroff_notify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_runtime_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_mmc_flush_cache._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_type to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_init_card._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_init_card._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_init_card._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_init_card._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_init_card._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_init_card._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_std_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_std_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_std_attrs to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_cid to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_csd to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_date to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_erase_size to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_preferred_erase_size to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fwrev to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ffu_capable to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_hwrev to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_manfid to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_oemid to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_prv to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rev to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pre_eol_info to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_life_time to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_serial to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_enhanced_area_offset to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_enhanced_area_size to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_raw_rpmb_size_mult to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_enhanced_rpmb_supported to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rel_sectors to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ocr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rca to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_dsr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_cmdq_en to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_decode_csd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @taac_exp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @taac_mant to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tran_exp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tran_mant to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_decode_cid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_read_ext_csd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_read_ext_csd._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_decode_ext_csd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_ext_csd_fixups to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_manage_enhanced_area._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_manage_gp_partitions._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_select_hs400es._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_select_hs400es._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_select_hs400es._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_select_hs400es._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_select_hs400es._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_select_hs200._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_select_hs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_select_bus_width.ext_csd_bits to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_select_bus_width.bus_widths to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_select_bus_width._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_select_hs_ddr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_select_powerclass._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mmc_hs200_to_hs400(ptr noundef %card) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mmc_select_hs400(ptr noundef %card)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mmc_select_hs400(ptr noundef %card) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 8
  %mmc_avail_type = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 39
  %2 = ptrtoint ptr %mmc_avail_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mmc_avail_type, align 4
  %and = and i32 %3, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %bus_width = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 28, i32 6
  %4 = ptrtoint ptr %bus_width to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bus_width, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp = icmp eq i8 %5, 3
  br i1 %cmp, label %if.end, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true
  %generic_cmd6_time = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 14
  %6 = ptrtoint ptr %generic_cmd6_time to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %generic_cmd6_time, align 4
  %call = tail call i32 @__mmc_switch(ptr noundef %card, i8 noundef zeroext 1, i8 noundef zeroext -71, i8 noundef zeroext 1, i32 noundef %7, i8 noundef zeroext 0, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end7, label %do.end

do.end:                                           ; preds = %if.end
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %11, %if.end.i ], [ %9, %do.end.dev_name.exit_crit_edge ]
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %retval.0.i, i32 noundef %call) #15
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %ops = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %hs400_downgrade = getelementptr inbounds %struct.mmc_host_ops, ptr %13, i32 0, i32 16
  %14 = ptrtoint ptr %hs400_downgrade to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hs400_downgrade, align 4
  %tobool8.not = icmp eq ptr %15, null
  br i1 %tobool8.not, label %if.end7.if.end12_crit_edge, label %if.then9

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %15(ptr noundef %1) #12
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end7.if.end12_crit_edge
  tail call void @mmc_set_timing(ptr noundef %1, i32 noundef 1) #12
  %hs_max_dtr = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 17
  %16 = ptrtoint ptr %hs_max_dtr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hs_max_dtr, align 8
  tail call void @mmc_set_clock(ptr noundef %1, i32 noundef %17) #12
  %call14 = tail call i32 @mmc_switch_status(ptr noundef %card, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end12.do.end74_crit_edge

if.end12.do.end74_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end74

if.end17:                                         ; preds = %if.end12
  %18 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops, align 4
  %hs400_prepare_ddr = getelementptr inbounds %struct.mmc_host_ops, ptr %19, i32 0, i32 15
  %20 = ptrtoint ptr %hs400_prepare_ddr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hs400_prepare_ddr, align 4
  %tobool19.not = icmp eq ptr %21, null
  br i1 %tobool19.not, label %if.end17.if.end24_crit_edge, label %if.then20

if.end17.if.end24_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %call23 = tail call i32 %21(ptr noundef %1) #12
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %if.end17.if.end24_crit_edge
  %22 = ptrtoint ptr %generic_cmd6_time to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %generic_cmd6_time, align 4
  %call27 = tail call i32 @mmc_switch(ptr noundef %card, i8 noundef zeroext 1, i8 noundef zeroext -73, i8 noundef zeroext 6, i32 noundef %23) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end37, label %do.end32

do.end32:                                         ; preds = %if.end24
  %init_name.i133 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 1, i32 3
  %24 = ptrtoint ptr %init_name.i133 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %init_name.i133, align 8
  %tobool.not.i134 = icmp eq ptr %25, null
  br i1 %tobool.not.i134, label %if.end.i135, label %do.end32.dev_name.exit137_crit_edge

do.end32.dev_name.exit137_crit_edge:              ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit137

if.end.i135:                                      ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev34 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %class_dev34 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %class_dev34, align 4
  br label %dev_name.exit137

dev_name.exit137:                                 ; preds = %if.end.i135, %do.end32.dev_name.exit137_crit_edge
  %retval.0.i136 = phi ptr [ %27, %if.end.i135 ], [ %25, %do.end32.dev_name.exit137_crit_edge ]
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %retval.0.i136, i32 noundef %call27) #15
  br label %cleanup

if.end37:                                         ; preds = %if.end24
  %drive_strength = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 40
  %28 = ptrtoint ptr %drive_strength to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %drive_strength, align 8
  %.tr = trunc i32 %29 to i8
  %30 = shl i8 %.tr, 4
  %conv38 = or i8 %30, 3
  %31 = ptrtoint ptr %generic_cmd6_time to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %generic_cmd6_time, align 4
  %call41 = tail call i32 @__mmc_switch(ptr noundef %card, i8 noundef zeroext 1, i8 noundef zeroext -71, i8 noundef zeroext %conv38, i32 noundef %32, i8 noundef zeroext 0, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end51, label %do.end46

do.end46:                                         ; preds = %if.end37
  %init_name.i138 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 1, i32 3
  %33 = ptrtoint ptr %init_name.i138 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %init_name.i138, align 8
  %tobool.not.i139 = icmp eq ptr %34, null
  br i1 %tobool.not.i139, label %if.end.i140, label %do.end46.dev_name.exit142_crit_edge

do.end46.dev_name.exit142_crit_edge:              ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit142

if.end.i140:                                      ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev48 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 1
  %35 = ptrtoint ptr %class_dev48 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %class_dev48, align 4
  br label %dev_name.exit142

dev_name.exit142:                                 ; preds = %if.end.i140, %do.end46.dev_name.exit142_crit_edge
  %retval.0.i141 = phi ptr [ %36, %if.end.i140 ], [ %34, %do.end46.dev_name.exit142_crit_edge ]
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %retval.0.i141, i32 noundef %call41) #15
  br label %cleanup

if.end51:                                         ; preds = %if.end37
  tail call void @mmc_set_timing(ptr noundef %1, i32 noundef 10) #12
  %37 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %card, align 8
  %timing.i.i = getelementptr inbounds %struct.mmc_host, ptr %38, i32 0, i32 28, i32 7
  %39 = ptrtoint ptr %timing.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %timing.i.i, align 4
  %.off.i = add i8 %40, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i)
  %switch.i = icmp ult i8 %.off.i, 2
  br i1 %switch.i, label %land.lhs.true.i, label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end51
  %hs200_max_dtr.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 18
  %41 = ptrtoint ptr %hs200_max_dtr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %hs200_max_dtr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %42)
  %cmp.not.i = icmp eq i32 %42, -1
  br i1 %cmp.not.i, label %land.lhs.true.i.if.else11.i_crit_edge, label %land.lhs.true.i.mmc_set_bus_speed.exit_crit_edge

land.lhs.true.i.mmc_set_bus_speed.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mmc_set_bus_speed.exit

land.lhs.true.i.if.else11.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else11.i

if.else.i:                                        ; preds = %if.end51
  %43 = add i8 %40, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %43)
  %44 = icmp ult i8 %43, -2
  br i1 %44, label %if.else.i.if.else11.i_crit_edge, label %land.lhs.true5.i

if.else.i.if.else11.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else11.i

land.lhs.true5.i:                                 ; preds = %if.else.i
  %45 = ptrtoint ptr %hs_max_dtr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %hs_max_dtr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %46)
  %cmp7.not.i = icmp eq i32 %46, -1
  br i1 %cmp7.not.i, label %land.lhs.true5.i.if.else11.i_crit_edge, label %land.lhs.true5.i.mmc_set_bus_speed.exit_crit_edge

land.lhs.true5.i.mmc_set_bus_speed.exit_crit_edge: ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mmc_set_bus_speed.exit

land.lhs.true5.i.if.else11.i_crit_edge:           ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else11.i

if.else11.i:                                      ; preds = %land.lhs.true5.i.if.else11.i_crit_edge, %if.else.i.if.else11.i_crit_edge, %land.lhs.true.i.if.else11.i_crit_edge
  %max_dtr12.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 20, i32 7
  %47 = ptrtoint ptr %max_dtr12.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %max_dtr12.i, align 4
  br label %mmc_set_bus_speed.exit

mmc_set_bus_speed.exit:                           ; preds = %if.else11.i, %land.lhs.true5.i.mmc_set_bus_speed.exit_crit_edge, %land.lhs.true.i.mmc_set_bus_speed.exit_crit_edge
  %max_dtr.0.i = phi i32 [ %42, %land.lhs.true.i.mmc_set_bus_speed.exit_crit_edge ], [ %46, %land.lhs.true5.i.mmc_set_bus_speed.exit_crit_edge ], [ %48, %if.else11.i ]
  tail call void @mmc_set_clock(ptr noundef %38, i32 noundef %max_dtr.0.i) #12
  %49 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ops, align 4
  %execute_hs400_tuning = getelementptr inbounds %struct.mmc_host_ops, ptr %50, i32 0, i32 14
  %51 = ptrtoint ptr %execute_hs400_tuning to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %execute_hs400_tuning, align 4
  %tobool53.not = icmp eq ptr %52, null
  br i1 %tobool53.not, label %mmc_set_bus_speed.exit.if.end61_crit_edge, label %if.then54

mmc_set_bus_speed.exit.if.end61_crit_edge:        ; preds = %mmc_set_bus_speed.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

if.then54:                                        ; preds = %mmc_set_bus_speed.exit
  tail call void @mmc_retune_disable(ptr noundef %1) #12
  %53 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ops, align 4
  %execute_hs400_tuning56 = getelementptr inbounds %struct.mmc_host_ops, ptr %54, i32 0, i32 14
  %55 = ptrtoint ptr %execute_hs400_tuning56 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %execute_hs400_tuning56, align 4
  %call57 = tail call i32 %56(ptr noundef %1, ptr noundef %card) #12
  tail call void @mmc_retune_enable(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.then54.if.end61_crit_edge, label %if.then54.do.end74_crit_edge

if.then54.do.end74_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end74

if.then54.if.end61_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

if.end61:                                         ; preds = %if.then54.if.end61_crit_edge, %mmc_set_bus_speed.exit.if.end61_crit_edge
  %57 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ops, align 4
  %hs400_complete = getelementptr inbounds %struct.mmc_host_ops, ptr %58, i32 0, i32 17
  %59 = ptrtoint ptr %hs400_complete to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hs400_complete, align 4
  %tobool63.not = icmp eq ptr %60, null
  br i1 %tobool63.not, label %if.end61.if.end67_crit_edge, label %if.then64

if.end61.if.end67_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67

if.then64:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %60(ptr noundef %1) #12
  br label %if.end67

if.end67:                                         ; preds = %if.then64, %if.end61.if.end67_crit_edge
  %call68 = tail call i32 @mmc_switch_status(ptr noundef %card, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end67.cleanup_crit_edge, label %if.end67.do.end74_crit_edge

if.end67.do.end74_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end74

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end74:                                         ; preds = %if.end67.do.end74_crit_edge, %if.then54.do.end74_crit_edge, %if.end12.do.end74_crit_edge
  %err.0 = phi i32 [ %call14, %if.end12.do.end74_crit_edge ], [ %call57, %if.then54.do.end74_crit_edge ], [ %call68, %if.end67.do.end74_crit_edge ]
  %61 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %card, align 8
  %init_name.i143 = getelementptr inbounds %struct.mmc_host, ptr %62, i32 0, i32 1, i32 3
  %63 = ptrtoint ptr %init_name.i143 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %init_name.i143, align 8
  %tobool.not.i144 = icmp eq ptr %64, null
  br i1 %tobool.not.i144, label %if.end.i145, label %do.end74.dev_name.exit147_crit_edge

do.end74.dev_name.exit147_crit_edge:              ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit147

if.end.i145:                                      ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev77 = getelementptr inbounds %struct.mmc_host, ptr %62, i32 0, i32 1
  %65 = ptrtoint ptr %class_dev77 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %class_dev77, align 4
  br label %dev_name.exit147

dev_name.exit147:                                 ; preds = %if.end.i145, %do.end74.dev_name.exit147_crit_edge
  %retval.0.i146 = phi ptr [ %66, %if.end.i145 ], [ %64, %do.end74.dev_name.exit147_crit_edge ]
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %retval.0.i146, ptr noundef nonnull @.str.6, i32 noundef %err.0) #15
  br label %cleanup

cleanup:                                          ; preds = %dev_name.exit147, %if.end67.cleanup_crit_edge, %dev_name.exit142, %dev_name.exit137, %dev_name.exit, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %dev_name.exit ], [ %err.0, %dev_name.exit147 ], [ %call27, %dev_name.exit137 ], [ %call41, %dev_name.exit142 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end67.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mmc_hs400_to_hs200(ptr noundef %card) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 8
  %hs_max_dtr = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 17
  %2 = ptrtoint ptr %hs_max_dtr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hs_max_dtr, align 8
  tail call void @mmc_set_clock(ptr noundef %1, i32 noundef %3) #12
  %generic_cmd6_time = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 14
  %4 = ptrtoint ptr %generic_cmd6_time to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %generic_cmd6_time, align 4
  %call = tail call i32 @__mmc_switch(ptr noundef %card, i8 noundef zeroext 1, i8 noundef zeroext -71, i8 noundef zeroext 1, i32 noundef %5, i8 noundef zeroext 0, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end:                                           ; preds = %entry
  %ops = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %hs400_downgrade = getelementptr inbounds %struct.mmc_host_ops, ptr %7, i32 0, i32 16
  %8 = ptrtoint ptr %hs400_downgrade to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hs400_downgrade, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %9(ptr noundef %1) #12
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  tail call void @mmc_set_timing(ptr noundef %1, i32 noundef 8) #12
  %call8 = tail call i32 @mmc_switch_status(ptr noundef %card, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.do.end_crit_edge

if.end7.do.end_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end11:                                         ; preds = %if.end7
  %10 = ptrtoint ptr %generic_cmd6_time to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %generic_cmd6_time, align 4
  %call14 = tail call i32 @__mmc_switch(ptr noundef %card, i8 noundef zeroext 1, i8 noundef zeroext -73, i8 noundef zeroext 2, i32 noundef %11, i8 noundef zeroext 0, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end11.do.end_crit_edge

if.end11.do.end_crit_edge:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end17:                                         ; preds = %if.end11
  tail call void @mmc_set_timing(ptr noundef %1, i32 noundef 1) #12
  %call18 = tail call i32 @mmc_switch_status(ptr noundef %card, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.do.end_crit_edge

if.end17.do.end_crit_edge:                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end21:                                         ; preds = %if.end17
  %drive_strength = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 40
  %12 = ptrtoint ptr %drive_strength to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %drive_strength, align 8
  %.tr = trunc i32 %13 to i8
  %14 = shl i8 %.tr, 4
  %conv = or i8 %14, 2
  %15 = ptrtoint ptr %generic_cmd6_time to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %generic_cmd6_time, align 4
  %call24 = tail call i32 @__mmc_switch(ptr noundef %card, i8 noundef zeroext 1, i8 noundef zeroext -71, i8 noundef zeroext %conv, i32 noundef %16, i8 noundef zeroext 0, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end21.do.end_crit_edge

if.end21.do.end_crit_edge:                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end27:                                         ; preds = %if.end21
  tail call void @mmc_set_timing(ptr noundef %1, i32 noundef 9) #12
  %call28 = tail call i32 @mmc_switch_status(ptr noundef %card, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end27.do.end_crit_edge

if.end27.do.end_crit_edge:                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end31:                                         ; preds = %if.end27
  %17 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %card, align 8
  %timing.i.i = getelementptr inbounds %struct.mmc_host, ptr %18, i32 0, i32 28, i32 7
  %19 = ptrtoint ptr %timing.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %timing.i.i, align 4
  %.off.i = add i8 %20, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i)
  %switch.i = icmp ult i8 %.off.i, 2
  br i1 %switch.i, label %land.lhs.true.i, label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end31
  %hs200_max_dtr.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 18
  %21 = ptrtoint ptr %hs200_max_dtr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hs200_max_dtr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %cmp.not.i = icmp eq i32 %22, -1
  br i1 %cmp.not.i, label %land.lhs.true.i.if.else11.i_crit_edge, label %land.lhs.true.i.mmc_set_bus_speed.exit_crit_edge

land.lhs.true.i.mmc_set_bus_speed.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mmc_set_bus_speed.exit

land.lhs.true.i.if.else11.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else11.i

if.else.i:                                        ; preds = %if.end31
  %23 = add i8 %20, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %23)
  %24 = icmp ult i8 %23, -2
  br i1 %24, label %if.else.i.if.else11.i_crit_edge, label %land.lhs.true5.i

if.else.i.if.else11.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else11.i

land.lhs.true5.i:                                 ; preds = %if.else.i
  %25 = ptrtoint ptr %hs_max_dtr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %hs_max_dtr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %cmp7.not.i = icmp eq i32 %26, -1
  br i1 %cmp7.not.i, label %land.lhs.true5.i.if.else11.i_crit_edge, label %land.lhs.true5.i.mmc_set_bus_speed.exit_crit_edge

land.lhs.true5.i.mmc_set_bus_speed.exit_crit_edge: ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mmc_set_bus_speed.exit

land.lhs.true5.i.if.else11.i_crit_edge:           ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else11.i

if.else11.i:                                      ; preds = %land.lhs.true5.i.if.else11.i_crit_edge, %if.else.i.if.else11.i_crit_edge, %land.lhs.true.i.if.else11.i_crit_edge
  %max_dtr12.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 20, i32 7
  %27 = ptrtoint ptr %max_dtr12.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %max_dtr12.i, align 4
  br label %mmc_set_bus_speed.exit

mmc_set_bus_speed.exit:                           ; preds = %if.else11.i, %land.lhs.true5.i.mmc_set_bus_speed.exit_crit_edge, %land.lhs.true.i.mmc_set_bus_speed.exit_crit_edge
  %max_dtr.0.i = phi i32 [ %22, %land.lhs.true.i.mmc_set_bus_speed.exit_crit_edge ], [ %26, %land.lhs.true5.i.mmc_set_bus_speed.exit_crit_edge ], [ %28, %if.else11.i ]
  tail call void @mmc_set_clock(ptr noundef %18, i32 noundef %max_dtr.0.i) #12
  %29 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops, align 4
  %prepare_hs400_tuning = getelementptr inbounds %struct.mmc_host_ops, ptr %30, i32 0, i32 13
  %31 = ptrtoint ptr %prepare_hs400_tuning to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prepare_hs400_tuning, align 4
  %tobool33.not = icmp eq ptr %32, null
  br i1 %tobool33.not, label %mmc_set_bus_speed.exit.cleanup_crit_edge, label %if.then34

mmc_set_bus_speed.exit.cleanup_crit_edge:         ; preds = %mmc_set_bus_speed.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then34:                                        ; preds = %mmc_set_bus_speed.exit
  call void @__sanitizer_cov_trace_pc() #14
  %ios = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 28
  %call37 = tail call i32 %32(ptr noundef %1, ptr noundef %ios) #12
  br label %cleanup

do.end:                                           ; preds = %if.end27.do.end_crit_edge, %if.end21.do.end_crit_edge, %if.end17.do.end_crit_edge, %if.end11.do.end_crit_edge, %if.end7.do.end_crit_edge, %entry.do.end_crit_edge
  %err.0 = phi i32 [ %call, %entry.do.end_crit_edge ], [ %call8, %if.end7.do.end_crit_edge ], [ %call14, %if.end11.do.end_crit_edge ], [ %call18, %if.end17.do.end_crit_edge ], [ %call24, %if.end21.do.end_crit_edge ], [ %call28, %if.end27.do.end_crit_edge ]
  %33 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %card, align 8
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %34, i32 0, i32 1, i32 3
  %35 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %36, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %34, i32 0, i32 1
  %37 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %38, %if.end.i ], [ %36, %do.end.dev_name.exit_crit_edge ]
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %retval.0.i, ptr noundef nonnull @.str.1, i32 noundef %err.0) #15
  br label %cleanup

cleanup:                                          ; preds = %dev_name.exit, %if.then34, %mmc_set_bus_speed.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %dev_name.exit ], [ 0, %if.then34 ], [ 0, %mmc_set_bus_speed.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_set_clock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mmc_switch(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_set_timing(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_switch_status(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mmc_attach_mmc(ptr noundef %host) local_unnamed_addr #0 align 64 {
entry:
  %ocr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ocr) #12
  %0 = ptrtoint ptr %ocr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ocr, align 4, !annotation !306
  %claimed = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 29
  %1 = ptrtoint ptr %claimed to i32
  call void @__asan_load2_noabort(i32 %1)
  %bf.load = load i16, ptr %claimed, align 8
  %2 = and i16 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !307

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2260, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %caps = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 16
  %3 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %caps, align 32
  %and = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %if.then22, label %if.end.if.end23_crit_edge

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mmc_set_bus_mode(ptr noundef %host, i32 noundef 1) #12
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end.if.end23_crit_edge
  %call = call i32 @mmc_send_op_cond(ptr noundef %host, i32 noundef 0, ptr noundef nonnull %ocr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool24.not = icmp eq i32 %call, 0
  br i1 %tobool24.not, label %if.end26, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end26:                                         ; preds = %if.end23
  call void @mmc_attach_bus(ptr noundef %host, ptr noundef nonnull @mmc_ops) #12
  %ocr_avail_mmc = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 11
  %5 = ptrtoint ptr %ocr_avail_mmc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ocr_avail_mmc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool27.not = icmp eq i32 %6, 0
  br i1 %tobool27.not, label %if.end26.if.end30_crit_edge, label %if.then28

if.end26.if.end30_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  %ocr_avail = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 8
  %7 = ptrtoint ptr %ocr_avail to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %ocr_avail, align 64
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end26.if.end30_crit_edge
  %8 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %caps, align 32
  %and32 = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end30.if.end39_crit_edge, label %if.then34

if.end30.if.end39_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.then34:                                        ; preds = %if.end30
  %call35 = call i32 @mmc_spi_read_ocr(ptr noundef %host, i32 noundef 1, ptr noundef nonnull %ocr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then34.if.end39_crit_edge, label %if.then34.err54_crit_edge

if.then34.err54_crit_edge:                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #14
  br label %err54

if.then34.if.end39_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.end39:                                         ; preds = %if.then34.if.end39_crit_edge, %if.end30.if.end39_crit_edge
  %10 = ptrtoint ptr %ocr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ocr, align 4
  %call40 = call i32 @mmc_select_voltage(ptr noundef %host, i32 noundef %11) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end39.err54_crit_edge, label %if.end43

if.end39.err54_crit_edge:                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %err54

if.end43:                                         ; preds = %if.end39
  %call44 = call fastcc i32 @mmc_init_card(ptr noundef %host, i32 noundef %call40, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end43.err54_crit_edge

if.end43.err54_crit_edge:                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %err54

if.end47:                                         ; preds = %if.end43
  call void @mmc_release_host(ptr noundef %host) #12
  %card = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 37
  %12 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %card, align 4
  %call48 = call i32 @mmc_add_card(ptr noundef %13) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %remove_card

if.end51:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = call i32 @__mmc_claim_host(ptr noundef %host, ptr noundef null, ptr noundef null) #12
  br label %cleanup

remove_card:                                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %card, align 4
  call void @mmc_remove_card(ptr noundef %15) #12
  %call.i90 = call i32 @__mmc_claim_host(ptr noundef %host, ptr noundef null, ptr noundef null) #12
  %16 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %card, align 4
  br label %err54

err54:                                            ; preds = %remove_card, %if.end43.err54_crit_edge, %if.end39.err54_crit_edge, %if.then34.err54_crit_edge
  %err.0 = phi i32 [ %call35, %if.then34.err54_crit_edge ], [ %call44, %if.end43.err54_crit_edge ], [ %call48, %remove_card ], [ -22, %if.end39.err54_crit_edge ]
  call void @mmc_detach_bus(ptr noundef %host) #12
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1, i32 3
  %17 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.end.i, label %err54.dev_name.exit_crit_edge

err54.dev_name.exit_crit_edge:                    ; preds = %err54
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %err54
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1
  %19 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %err54.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %20, %if.end.i ], [ %18, %err54.dev_name.exit_crit_edge ]
  %call60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %retval.0.i, i32 noundef %err.0) #15
  br label %cleanup

cleanup:                                          ; preds = %dev_name.exit, %if.end51, %if.end23.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %dev_name.exit ], [ 0, %if.end51 ], [ %call, %if.end23.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ocr) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_set_bus_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_send_op_cond(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_attach_bus(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_spi_read_ocr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_select_voltage(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mmc_init_card(ptr noundef %host, i32 noundef %ocr, ptr noundef %oldcard) unnamed_addr #0 align 64 {
entry:
  %cid = alloca [4 x i32], align 4
  %rocr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cid) #12
  %0 = call ptr @memset(ptr %cid, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rocr) #12
  %1 = ptrtoint ptr %rocr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rocr, align 4, !annotation !306
  %claimed = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 29
  %2 = ptrtoint ptr %claimed to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %claimed, align 8
  %3 = and i16 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !307

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1579, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %caps = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 16
  %4 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %caps, align 32
  %and = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %if.then22, label %if.end.if.end23_crit_edge

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mmc_set_bus_mode(ptr noundef %host, i32 noundef 1) #12
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end.if.end23_crit_edge
  %call = tail call i32 @mmc_go_idle(ptr noundef %host) #12
  %or = or i32 %ocr, 1073741824
  %call24 = call i32 @mmc_send_op_cond(ptr noundef %host, i32 noundef %or, ptr noundef nonnull %rocr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end23.cleanup395_crit_edge

if.end23.cleanup395_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup395

if.end27:                                         ; preds = %if.end23
  %6 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %caps, align 32
  %and29 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end27.if.end37_crit_edge, label %if.then31

if.end27.if.end37_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.then31:                                        ; preds = %if.end27
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @use_spi_crc to i32))
  %8 = load i8, ptr @use_spi_crc, align 1, !range !308
  %9 = zext i8 %8 to i32
  %call33 = call i32 @mmc_spi_set_crc(ptr noundef %host, i32 noundef %9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.then31.if.end37_crit_edge, label %if.then31.cleanup395_crit_edge

if.then31.cleanup395_crit_edge:                   ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup395

if.then31.if.end37_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.end37:                                         ; preds = %if.then31.if.end37_crit_edge, %if.end27.if.end37_crit_edge
  %call38 = call i32 @mmc_send_cid(ptr noundef %host, ptr noundef nonnull %cid) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end37.cleanup395_crit_edge

if.end37.cleanup395_crit_edge:                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup395

if.end41:                                         ; preds = %if.end37
  %tobool42.not = icmp eq ptr %oldcard, null
  br i1 %tobool42.not, label %if.else, label %if.then43

if.then43:                                        ; preds = %if.end41
  %raw_cid = getelementptr inbounds %struct.mmc_card, ptr %oldcard, i32 0, i32 15
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %cid, ptr noundef dereferenceable(16) %raw_cid, i32 16) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp.not = icmp eq i32 %bcmp, 0
  br i1 %cmp.not, label %if.then43.if.end74_crit_edge, label %do.body49

if.then43.if.end74_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end74

do.body49:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_init_card.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_init_card, %if.then59)) #12
          to label %cleanup395 [label %if.then59], !srcloc !309

if.then59:                                        ; preds = %do.body49
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then59.dev_name.exit_crit_edge

if.then59.dev_name.exit_crit_edge:                ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1
  %12 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then59.dev_name.exit_crit_edge
  %retval.0.i551 = phi ptr [ %13, %if.end.i ], [ %11, %if.then59.dev_name.exit_crit_edge ]
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mmc_init_card.__UNIQUE_ID_ddebug272, ptr noundef nonnull @.str.25, ptr noundef %retval.0.i551) #12
  br label %cleanup395

if.else:                                          ; preds = %if.end41
  %call65 = call ptr @mmc_alloc_card(ptr noundef %host, ptr noundef nonnull @mmc_type) #12
  %cmp.i = icmp ugt ptr %call65, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then67, label %if.end69

if.then67:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %call65 to i32
  br label %cleanup395

if.end69:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %ocr70 = getelementptr inbounds %struct.mmc_card, ptr %call65, i32 0, i32 2
  %15 = ptrtoint ptr %ocr70 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %ocr, ptr %ocr70, align 8
  %type = getelementptr inbounds %struct.mmc_card, ptr %call65, i32 0, i32 4
  %16 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %type, align 8
  %rca = getelementptr inbounds %struct.mmc_card, ptr %call65, i32 0, i32 3
  %17 = ptrtoint ptr %rca to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %rca, align 4
  %raw_cid71 = getelementptr inbounds %struct.mmc_card, ptr %call65, i32 0, i32 15
  %18 = call ptr @memcpy(ptr %raw_cid71, ptr %cid, i32 16)
  br label %if.end74

if.end74:                                         ; preds = %if.end69, %if.then43.if.end74_crit_edge
  %card.0 = phi ptr [ %call65, %if.end69 ], [ %oldcard, %if.then43.if.end74_crit_edge ]
  %ops = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 3
  %19 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops, align 4
  %init_card = getelementptr inbounds %struct.mmc_host_ops, ptr %20, i32 0, i32 9
  %21 = ptrtoint ptr %init_card to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %init_card, align 4
  %tobool75.not = icmp eq ptr %22, null
  br i1 %tobool75.not, label %if.end74.if.end79_crit_edge, label %if.then76

if.end74.if.end79_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end79

if.then76:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #14
  call void %22(ptr noundef %host, ptr noundef %card.0) #12
  br label %if.end79

if.end79:                                         ; preds = %if.then76, %if.end74.if.end79_crit_edge
  %23 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %caps, align 32
  %and81 = and i32 %24, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %if.then83, label %if.end79.if.end88_crit_edge

if.end79.if.end88_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88

if.then83:                                        ; preds = %if.end79
  %call84 = call i32 @mmc_set_relative_addr(ptr noundef %card.0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end87, label %if.then83.free_card_crit_edge

if.then83.free_card_crit_edge:                    ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_card

if.end87:                                         ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #14
  call void @mmc_set_bus_mode(ptr noundef %host, i32 noundef 2) #12
  br label %if.end88

if.end88:                                         ; preds = %if.end87, %if.end79.if.end88_crit_edge
  br i1 %tobool42.not, label %if.then90, label %if.end88.if.end104_crit_edge

if.end88.if.end104_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end104

if.then90:                                        ; preds = %if.end88
  %raw_csd = getelementptr inbounds %struct.mmc_card, ptr %card.0, i32 0, i32 16
  %call92 = call i32 @mmc_send_csd(ptr noundef %card.0, ptr noundef %raw_csd) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end95, label %if.then90.if.then392_crit_edge

if.then90.if.then392_crit_edge:                   ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then392

if.end95:                                         ; preds = %if.then90
  %call96 = call fastcc i32 @mmc_decode_csd(ptr noundef %card.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.end99, label %if.end95.if.then392_crit_edge

if.end95.if.then392_crit_edge:                    ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then392

if.end99:                                         ; preds = %if.end95
  %call100 = call fastcc i32 @mmc_decode_cid(ptr noundef %card.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.end99.if.end104_crit_edge, label %if.end99.if.then392_crit_edge

if.end99.if.then392_crit_edge:                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then392

if.end99.if.end104_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end104

if.end104:                                        ; preds = %if.end99.if.end104_crit_edge, %if.end88.if.end104_crit_edge
  %dsr_imp = getelementptr inbounds %struct.mmc_card, ptr %card.0, i32 0, i32 20, i32 12
  %25 = ptrtoint ptr %dsr_imp to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load105 = load i8, ptr %dsr_imp, align 8
  %26 = and i8 %bf.load105, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool109.not = icmp eq i8 %26, 0
  br i1 %tobool109.not, label %if.end104.if.end113_crit_edge, label %land.lhs.true

if.end104.if.end113_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end113

land.lhs.true:                                    ; preds = %if.end104
  %dsr_req = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 60
  %27 = ptrtoint ptr %dsr_req to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dsr_req, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool110.not = icmp eq i32 %28, 0
  br i1 %tobool110.not, label %land.lhs.true.if.end113_crit_edge, label %if.then111

land.lhs.true.if.end113_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end113

if.then111:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call112 = call i32 @mmc_set_dsr(ptr noundef %host) #12
  br label %if.end113

if.end113:                                        ; preds = %if.then111, %land.lhs.true.if.end113_crit_edge, %if.end104.if.end113_crit_edge
  %29 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %caps, align 32
  %and115 = and i32 %30, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  br i1 %tobool116.not, label %if.then117, label %if.end113.if.end122_crit_edge

if.end113.if.end122_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end122

if.then117:                                       ; preds = %if.end113
  %call118 = call i32 @mmc_select_card(ptr noundef %card.0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %if.then117.if.end122_crit_edge, label %if.then117.free_card_crit_edge

if.then117.free_card_crit_edge:                   ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_card

if.then117.if.end122_crit_edge:                   ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end122

if.end122:                                        ; preds = %if.then117.if.end122_crit_edge, %if.end113.if.end122_crit_edge
  br i1 %tobool42.not, label %if.then124, label %if.end122.if.end134_crit_edge

if.end122.if.end134_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end134

if.then124:                                       ; preds = %if.end122
  %call125 = call fastcc i32 @mmc_read_ext_csd(ptr noundef %card.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %if.end128, label %if.then124.if.then392_crit_edge

if.then124.if.then392_crit_edge:                  ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then392

if.end128:                                        ; preds = %if.then124
  %31 = ptrtoint ptr %rocr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rocr, align 4
  %and129 = and i32 %32, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129)
  %tobool130.not = icmp eq i32 %and129, 0
  br i1 %tobool130.not, label %if.end128.if.end133_crit_edge, label %if.then131

if.end128.if.end133_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end133

if.then131:                                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #14
  %state = getelementptr inbounds %struct.mmc_card, ptr %card.0, i32 0, i32 5
  %33 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %state, align 4
  %or132 = or i32 %34, 4
  store i32 %or132, ptr %state, align 4
  br label %if.end133

if.end133:                                        ; preds = %if.then131, %if.end128.if.end133_crit_edge
  %erase_group_def.i = getelementptr inbounds %struct.mmc_card, ptr %card.0, i32 0, i32 21, i32 1
  %35 = ptrtoint ptr %erase_group_def.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %erase_group_def.i, align 1
  %37 = and i8 %36, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i552 = icmp eq i8 %37, 0
  %erase_size2.i = getelementptr inbounds %struct.mmc_card, ptr %card.0, i32 0, i32 20, i32 8
  %hc_erase_size.i = getelementptr inbounds %struct.mmc_card, ptr %card.0, i32 0, i32 21, i32 20
  %.sink.in.i = select i1 %tobool.not.i552, ptr %erase_size2.i, ptr %hc_erase_size.i
  %38 = ptrtoint ptr %.sink.in.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %.sink.i = load i32, ptr %.sink.in.i, align 4
  %39 = getelementptr inbounds %struct.mmc_card, ptr %card.0, i32 0, i32 9
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %.sink.i, ptr %39, align 4
  call void @mmc_init_erase(ptr noundef %card.0) #12
  br label %if.end134

if.end134:                                        ; preds = %if.end133, %if.end122.if.end134_crit_edge
  %ext_csd = getelementptr inbounds %struct.mmc_card, ptr %card.0, i32 0, i32 21
  %41 = ptrtoint ptr %ext_csd to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %ext_csd, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %42)
  %cmp136 = icmp ugt i8 %42, 2
  br i1 %cmp136, label %if.then138, label %if.end134.if.end154_crit_edge

if.end134.if.end154_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end154

if.then138:                                       ; preds = %if.end134
  %generic_cmd6_time = getelementptr inbounds %struct.mmc_card, ptr %card.0, i32 0, i32 21, i32 14
  %43 = ptrtoint ptr %generic_cmd6_time to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %generic_cmd6_time, align 4
  %call140 = call i32 @mmc_switch(ptr noundef %card.0, i8 noundef zeroext 1, i8 noundef zeroext -81, i8 noundef zeroext 1, i32 noundef %44) #12
  %45 = zext i32 %call140 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call140, label %if.then138.free_card_crit_edge [
    i32 0, label %if.else151
    i32 -74, label %if.then148
  ]

if.then138.free_card_crit_edge:                   ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_card

if.then148:                                       ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #14
  %enhanced_area_offset = getelementptr inbounds %struct.mmc_card, ptr %card.0, i32 0, i32 21, i32 26
  %46 = ptrtoint ptr %enhanced_area_offset to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 -22, ptr %enhanced_area_offset, align 8
  %enhanced_area_size = getelementptr inbounds %struct.mmc_card, ptr %card.0, i32 0, i32 21, i32 27
  %47 = ptrtoint ptr %enhanced_area_size to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -22, ptr %enhanced_area_size, align 8
  br label %if.end154

if.else151:                                       ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #14
  %erase_group_def = getelementptr inbounds %struct.mmc_card, ptr %card.0, i32 0, i32 21, i32 1
  %48 = ptrtoint ptr %erase_group_def to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %erase_group_def, align 1
  %hc_erase_size.i556 = getelementptr inbounds %struct.mmc_card, ptr %card.0, i32 0, i32 21, i32 20
  %49 = ptrtoint ptr %hc_erase_size.i556 to i32
  call void @__asan_load4_noabort(i32 %49)
  %.sink.i558 = load i32, ptr %hc_erase_size.i556, align 4
  %50 = getelementptr inbounds %struct.mmc_card, ptr %card.0, i32 0, i32 9
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %.sink.i558, ptr %50, align 4
  call void @mmc_init_erase(ptr noundef %card.0) #12
  br label %if.end154

if.end154:                                        ; preds = %if.else151, %if.then148, %if.end134.if.end154_crit_edge
  %part_config = getelementptr inbounds %struct.mmc_card, ptr %card.0, i32 0, i32 21, i32 6
  %52 = ptrtoint ptr %part_config to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %part_config, align 2
  %54 = and i8 %53, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool158.not = icmp eq i8 %54, 0
  br i1 %tobool158.not, label %if.end154.if.end175_crit_edge, label %if.then159

if.end154.if.end175_crit_edge:                    ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end175

if.then159:                                       ; preds = %if.end154
  %and163 = and i8 %53, -8
  %55 = ptrtoint ptr %part_config to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %and163, ptr %part_config, align 2
  %part_time = getelementptr inbounds %struct.mmc_card, ptr %card.0, i32 0, i32 21, i32 12
  %56 = ptrtoint ptr %part_time to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %part_time, align 4
  %call168 = call i32 @mmc_switch(ptr noundef %card.0, i8 noundef zeroext 1, i8 noundef zeroext -77, i8 noundef zeroext %and163, i32 noundef %57) #12
  %58 = zext i32 %call168 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.131)
  switch i32 %call168, label %if.then159.free_card_crit_edge [
    i32 0, label %if.then159.if.end175_crit_edge
    i32 -74, label %if.then159.if.end175_crit_edge600
  ]

if.then159.if.end175_crit_edge600:                ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end175

if.then159.if.end175_crit_edge:                   ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end175

if.then159.free_card_crit_edge:                   ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_card

if.end175:                                        ; preds = %if.then159.if.end175_crit_edge, %if.then159.if.end175_crit_edge600, %if.end154.if.end175_crit_edge
  %59 = ptrtoint ptr %ext_csd to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %ext_csd, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %60)
  %cmp179 = icmp ugt i8 %60, 5
  br i1 %cmp179, label %if.then181, label %if.end175.if.end195_crit_edge

if.end175.if.end195_crit_edge:                    ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end195

if.then181:                                       ; preds = %if.end175
  %generic_cmd6_time183 = getelementptr inbounds %struct.mmc_card, ptr %card.0, i32 0, i32 21, i32 14
  %61 = ptrtoint ptr %generic_cmd6_time183 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %generic_cmd6_time183, align 4
  %call184 = call i32 @mmc_switch(ptr noundef %card.0, i8 noundef zeroext 1, i8 noundef zeroext 34, i8 noundef zeroext 1, i32 noundef %62) #12
  %63 = zext i32 %call184 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.132)
  switch i32 %call184, label %if.then181.free_card_crit_edge [
    i32 0, label %if.then192
    i32 -74, label %if.then181.if.end195_crit_edge
  ]

if.then181.if.end195_crit_edge:                   ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end195

if.then181.free_card_crit_edge:                   ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_card

if.then192:                                       ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #14
  %power_off_notification = getelementptr inbounds %struct.mmc_card, ptr %card.0, i32 0, i32 21, i32 16
  %64 = ptrtoint ptr %power_off_notification to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %power_off_notification, align 4
  br label %if.end195

if.end195:                                        ; preds = %if.then192, %if.then181.if.end195_crit_edge, %if.end175.if.end195_crit_edge
  %call196 = call i32 @mmc_can_discard(ptr noundef %card.0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call196)
  %tobool197.not = icmp eq i32 %call196, 0
  br i1 %tobool197.not, label %if.else199, label %if.then198

if.then198:                                       ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #14
  %erase_arg = getelementptr inbounds %struct.mmc_card, ptr %card.0, i32 0, i32 13
  %65 = ptrtoint ptr %erase_arg to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 3, ptr %erase_arg, align 4
  br label %if.end207

if.else199:                                       ; preds = %if.end195
  %call200 = call i32 @mmc_can_trim(ptr noundef %card.0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call200)
  %tobool201.not = icmp eq i32 %call200, 0
  %erase_arg205 = getelementptr inbounds %struct.mmc_card, ptr %card.0, i32 0, i32 13
  br i1 %tobool201.not, label %if.else204, label %if.then202

if.then202:                                       ; preds = %if.else199
  call void @__sanitizer_cov_trace_pc() #14
  %66 = ptrtoint ptr %erase_arg205 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %erase_arg205, align 4
  br label %if.end207

if.else204:                                       ; preds = %if.else199
  call void @__sanitizer_cov_trace_pc() #14
  %67 = ptrtoint ptr %erase_arg205 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %erase_arg205, align 4
  br label %if.end207

if.end207:                                        ; preds = %if.else204, %if.then202, %if.then198
  %call208 = call fastcc i32 @mmc_select_timing(ptr noundef %card.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call208)
  %tobool209.not = icmp eq i32 %call208, 0
  br i1 %tobool209.not, label %if.end211, label %if.end207.free_card_crit_edge

if.end207.free_card_crit_edge:                    ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_card

if.end211:                                        ; preds = %if.end207
  %68 = ptrtoint ptr %card.0 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %card.0, align 8
  %timing.i = getelementptr inbounds %struct.mmc_host, ptr %69, i32 0, i32 28, i32 7
  %70 = ptrtoint ptr %timing.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %timing.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %71)
  %cmp.i559 = icmp eq i8 %71, 9
  br i1 %cmp.i559, label %if.then213, label %if.else228

if.then213:                                       ; preds = %if.end211
  %72 = ptrtoint ptr %claimed to i32
  call void @__asan_load2_noabort(i32 %72)
  %bf.load214 = load i16, ptr %claimed, align 8
  %bf.set = or i16 %bf.load214, 8192
  store i16 %bf.set, ptr %claimed, align 8
  %call216 = call fastcc i32 @mmc_hs200_tuning(ptr noundef %card.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call216)
  %tobool217.not = icmp eq i32 %call216, 0
  br i1 %tobool217.not, label %if.end220, label %if.end220.thread

if.end220.thread:                                 ; preds = %if.then213
  call void @__sanitizer_cov_trace_pc() #14
  %73 = ptrtoint ptr %claimed to i32
  call void @__asan_load2_noabort(i32 %73)
  %bf.load222593 = load i16, ptr %claimed, align 8
  %bf.clear223594 = and i16 %bf.load222593, -8193
  store i16 %bf.clear223594, ptr %claimed, align 8
  br label %free_card

if.end220:                                        ; preds = %if.then213
  %call219 = call fastcc i32 @mmc_select_hs400(ptr noundef %card.0)
  %74 = ptrtoint ptr %claimed to i32
  call void @__asan_load2_noabort(i32 %74)
  %bf.load222 = load i16, ptr %claimed, align 8
  %bf.clear223 = and i16 %bf.load222, -8193
  store i16 %bf.clear223, ptr %claimed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call219)
  %tobool225.not = icmp eq i32 %call219, 0
  br i1 %tobool225.not, label %if.end220.if.end244_crit_edge, label %if.end220.free_card_crit_edge

if.end220.free_card_crit_edge:                    ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_card

if.end220.if.end244_crit_edge:                    ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end244

if.else228:                                       ; preds = %if.end211
  %enhanced_strobe.i = getelementptr inbounds %struct.mmc_host, ptr %69, i32 0, i32 28, i32 10
  %75 = ptrtoint ptr %enhanced_strobe.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %enhanced_strobe.i, align 1, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool.i.not = icmp eq i8 %76, 0
  br i1 %tobool.i.not, label %if.then230, label %if.else228.if.end244_crit_edge

if.else228.if.end244_crit_edge:                   ; preds = %if.else228
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end244

if.then230:                                       ; preds = %if.else228
  %call231 = call fastcc i32 @mmc_select_bus_width(ptr noundef %card.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call231)
  %cmp232 = icmp sgt i32 %call231, 0
  br i1 %cmp232, label %land.lhs.true234, label %if.then230.if.end244_crit_edge

if.then230.if.end244_crit_edge:                   ; preds = %if.then230
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end244

land.lhs.true234:                                 ; preds = %if.then230
  %77 = ptrtoint ptr %card.0 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %card.0, align 8
  %timing.i560 = getelementptr inbounds %struct.mmc_host, ptr %78, i32 0, i32 28, i32 7
  %79 = ptrtoint ptr %timing.i560 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %timing.i560, align 4
  %81 = add i8 %80, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %81)
  %82 = icmp ult i8 %81, -2
  br i1 %82, label %land.lhs.true234.if.end244_crit_edge, label %if.then237

land.lhs.true234.if.end244_crit_edge:             ; preds = %land.lhs.true234
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end244

if.then237:                                       ; preds = %land.lhs.true234
  %call238 = call fastcc i32 @mmc_select_hs_ddr(ptr noundef %card.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call238)
  %tobool239.not = icmp eq i32 %call238, 0
  br i1 %tobool239.not, label %if.then237.if.end244_crit_edge, label %if.then237.free_card_crit_edge

if.then237.free_card_crit_edge:                   ; preds = %if.then237
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_card

if.then237.if.end244_crit_edge:                   ; preds = %if.then237
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end244

if.end244:                                        ; preds = %if.then237.if.end244_crit_edge, %land.lhs.true234.if.end244_crit_edge, %if.then230.if.end244_crit_edge, %if.else228.if.end244_crit_edge, %if.end220.if.end244_crit_edge
  call fastcc void @mmc_select_powerclass(ptr noundef %card.0)
  %hpi = getelementptr inbounds %struct.mmc_card, ptr %card.0, i32 0, i32 21, i32 30
  %83 = ptrtoint ptr %hpi to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %hpi, align 1, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool247.not = icmp eq i8 %84, 0
  br i1 %tobool247.not, label %if.end244.if.end273_crit_edge, label %if.then248

if.end244.if.end273_crit_edge:                    ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end273

if.then248:                                       ; preds = %if.end244
  %generic_cmd6_time250 = getelementptr inbounds %struct.mmc_card, ptr %card.0, i32 0, i32 21, i32 14
  %85 = ptrtoint ptr %generic_cmd6_time250 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %generic_cmd6_time250, align 4
  %call251 = call i32 @mmc_switch(ptr noundef %card.0, i8 noundef zeroext 1, i8 noundef zeroext -95, i8 noundef zeroext 1, i32 noundef %86) #12
  %87 = zext i32 %call251 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.133)
  switch i32 %call251, label %if.then248.free_card_crit_edge [
    i32 0, label %if.then248.if.end273.sink.split_crit_edge
    i32 -74, label %do.end262
  ]

if.then248.if.end273.sink.split_crit_edge:        ; preds = %if.then248
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end273.sink.split

if.then248.free_card_crit_edge:                   ; preds = %if.then248
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_card

do.end262:                                        ; preds = %if.then248
  %88 = ptrtoint ptr %card.0 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %card.0, align 8
  %init_name.i561 = getelementptr inbounds %struct.mmc_host, ptr %89, i32 0, i32 1, i32 3
  %90 = ptrtoint ptr %init_name.i561 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %init_name.i561, align 8
  %tobool.not.i562 = icmp eq ptr %91, null
  br i1 %tobool.not.i562, label %if.end.i563, label %do.end262.dev_name.exit565_crit_edge

do.end262.dev_name.exit565_crit_edge:             ; preds = %do.end262
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit565

if.end.i563:                                      ; preds = %do.end262
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev265 = getelementptr inbounds %struct.mmc_host, ptr %89, i32 0, i32 1
  %92 = ptrtoint ptr %class_dev265 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %class_dev265, align 4
  br label %dev_name.exit565

dev_name.exit565:                                 ; preds = %if.end.i563, %do.end262.dev_name.exit565_crit_edge
  %retval.0.i564 = phi ptr [ %93, %if.end.i563 ], [ %91, %do.end262.dev_name.exit565_crit_edge ]
  %call267 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %retval.0.i564) #15
  br label %if.end273.sink.split

if.end273.sink.split:                             ; preds = %dev_name.exit565, %if.then248.if.end273.sink.split_crit_edge
  %.sink = phi i8 [ 0, %dev_name.exit565 ], [ 1, %if.then248.if.end273.sink.split_crit_edge ]
  %hpi_en = getelementptr inbounds %struct.mmc_card, ptr %card.0, i32 0, i32 21, i32 29
  %94 = ptrtoint ptr %hpi_en to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %.sink, ptr %hpi_en, align 8
  br label %if.end273

if.end273:                                        ; preds = %if.end273.sink.split, %if.end244.if.end273_crit_edge
  %cache_size = getelementptr inbounds %struct.mmc_card, ptr %card.0, i32 0, i32 21, i32 28
  %95 = ptrtoint ptr %cache_size to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %cache_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp275.not = icmp eq i32 %96, 0
  br i1 %cmp275.not, label %if.end273.if.end305_crit_edge, label %if.then277

if.end273.if.end305_crit_edge:                    ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end305

if.then277:                                       ; preds = %if.end273
  %generic_cmd6_time279 = getelementptr inbounds %struct.mmc_card, ptr %card.0, i32 0, i32 21, i32 14
  %97 = ptrtoint ptr %generic_cmd6_time279 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %generic_cmd6_time279, align 4
  %99 = call i32 @llvm.umax.i32(i32 %98, i32 1600)
  %call283 = call i32 @mmc_switch(ptr noundef %card.0, i8 noundef zeroext 1, i8 noundef zeroext 33, i8 noundef zeroext 1, i32 noundef %99) #12
  %100 = zext i32 %call283 to i64
  call void @__sanitizer_cov_trace_switch(i64 %100, ptr @__sancov_gen_cov_switch_values.134)
  switch i32 %call283, label %if.then277.free_card_crit_edge [
    i32 0, label %if.then277.if.end305.sink.split_crit_edge
    i32 -74, label %do.end294
  ]

if.then277.if.end305.sink.split_crit_edge:        ; preds = %if.then277
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end305.sink.split

if.then277.free_card_crit_edge:                   ; preds = %if.then277
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_card

do.end294:                                        ; preds = %if.then277
  %101 = ptrtoint ptr %card.0 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %card.0, align 8
  %init_name.i566 = getelementptr inbounds %struct.mmc_host, ptr %102, i32 0, i32 1, i32 3
  %103 = ptrtoint ptr %init_name.i566 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %init_name.i566, align 8
  %tobool.not.i567 = icmp eq ptr %104, null
  br i1 %tobool.not.i567, label %if.end.i568, label %do.end294.dev_name.exit570_crit_edge

do.end294.dev_name.exit570_crit_edge:             ; preds = %do.end294
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit570

if.end.i568:                                      ; preds = %do.end294
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev297 = getelementptr inbounds %struct.mmc_host, ptr %102, i32 0, i32 1
  %105 = ptrtoint ptr %class_dev297 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %class_dev297, align 4
  br label %dev_name.exit570

dev_name.exit570:                                 ; preds = %if.end.i568, %do.end294.dev_name.exit570_crit_edge
  %retval.0.i569 = phi ptr [ %106, %if.end.i568 ], [ %104, %do.end294.dev_name.exit570_crit_edge ]
  %call299 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %retval.0.i569, i32 noundef -74) #15
  br label %if.end305.sink.split

if.end305.sink.split:                             ; preds = %dev_name.exit570, %if.then277.if.end305.sink.split_crit_edge
  %.sink599 = phi i8 [ 0, %dev_name.exit570 ], [ 1, %if.then277.if.end305.sink.split_crit_edge ]
  %cache_ctrl = getelementptr inbounds %struct.mmc_card, ptr %card.0, i32 0, i32 21, i32 7
  %107 = ptrtoint ptr %cache_ctrl to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %.sink599, ptr %cache_ctrl, align 1
  br label %if.end305

if.end305:                                        ; preds = %if.end305.sink.split, %if.end273.if.end305_crit_edge
  %cmdq_en = getelementptr inbounds %struct.mmc_card, ptr %card.0, i32 0, i32 21, i32 40
  %108 = ptrtoint ptr %cmdq_en to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 0, ptr %cmdq_en, align 2
  %cmdq_support = getelementptr inbounds %struct.mmc_card, ptr %card.0, i32 0, i32 21, i32 41
  %109 = ptrtoint ptr %cmdq_support to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %cmdq_support, align 1, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool308.not = icmp eq i8 %110, 0
  br i1 %tobool308.not, label %if.end305.if.end335_crit_edge, label %land.lhs.true310

if.end305.if.end335_crit_edge:                    ; preds = %if.end305
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end335

land.lhs.true310:                                 ; preds = %if.end305
  %caps2 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 17
  %111 = ptrtoint ptr %caps2 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %caps2, align 4
  %and311 = and i32 %112, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and311)
  %tobool312.not = icmp eq i32 %and311, 0
  br i1 %tobool312.not, label %land.lhs.true310.if.end335_crit_edge, label %if.then313

land.lhs.true310.if.end335_crit_edge:             ; preds = %land.lhs.true310
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end335

if.then313:                                       ; preds = %land.lhs.true310
  %call314 = call i32 @mmc_cmdq_enable(ptr noundef %card.0) #12
  %113 = zext i32 %call314 to i64
  call void @__sanitizer_cov_trace_switch(i64 %113, ptr @__sancov_gen_cov_switch_values.135)
  switch i32 %call314, label %if.then313.free_card_crit_edge [
    i32 0, label %if.then313.if.end335_crit_edge
    i32 -74, label %do.end325
  ]

if.then313.if.end335_crit_edge:                   ; preds = %if.then313
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end335

if.then313.free_card_crit_edge:                   ; preds = %if.then313
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_card

do.end325:                                        ; preds = %if.then313
  %114 = ptrtoint ptr %card.0 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %card.0, align 8
  %init_name.i571 = getelementptr inbounds %struct.mmc_host, ptr %115, i32 0, i32 1, i32 3
  %116 = ptrtoint ptr %init_name.i571 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %init_name.i571, align 8
  %tobool.not.i572 = icmp eq ptr %117, null
  br i1 %tobool.not.i572, label %if.end.i573, label %do.end325.dev_name.exit575_crit_edge

do.end325.dev_name.exit575_crit_edge:             ; preds = %do.end325
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit575

if.end.i573:                                      ; preds = %do.end325
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev328 = getelementptr inbounds %struct.mmc_host, ptr %115, i32 0, i32 1
  %118 = ptrtoint ptr %class_dev328 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %class_dev328, align 4
  br label %dev_name.exit575

dev_name.exit575:                                 ; preds = %if.end.i573, %do.end325.dev_name.exit575_crit_edge
  %retval.0.i574 = phi ptr [ %119, %if.end.i573 ], [ %117, %do.end325.dev_name.exit575_crit_edge ]
  %call330 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %retval.0.i574) #15
  %120 = ptrtoint ptr %cmdq_support to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 0, ptr %cmdq_support, align 1
  %cmdq_depth = getelementptr inbounds %struct.mmc_card, ptr %card.0, i32 0, i32 21, i32 42
  %121 = ptrtoint ptr %cmdq_depth to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 0, ptr %cmdq_depth, align 4
  br label %if.end335

if.end335:                                        ; preds = %dev_name.exit575, %if.then313.if.end335_crit_edge, %land.lhs.true310.if.end335_crit_edge, %if.end305.if.end335_crit_edge
  %122 = ptrtoint ptr %cmdq_en to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %cmdq_en, align 2, !range !308
  %reenable_cmdq = getelementptr inbounds %struct.mmc_card, ptr %card.0, i32 0, i32 8
  %124 = ptrtoint ptr %reenable_cmdq to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %123, ptr %reenable_cmdq, align 8
  %cqe_ops = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 62
  %125 = ptrtoint ptr %cqe_ops to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %cqe_ops, align 8
  %tobool340.not = icmp eq ptr %126, null
  br i1 %tobool340.not, label %if.end335.if.end370_crit_edge, label %land.lhs.true341

if.end335.if.end370_crit_edge:                    ; preds = %if.end335
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end370

land.lhs.true341:                                 ; preds = %if.end335
  %cqe_enabled = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 65
  %127 = ptrtoint ptr %cqe_enabled to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %cqe_enabled, align 4, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %tobool342.not = icmp eq i8 %128, 0
  br i1 %tobool342.not, label %if.then343, label %land.lhs.true341.if.end370_crit_edge

land.lhs.true341.if.end370_crit_edge:             ; preds = %land.lhs.true341
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end370

if.then343:                                       ; preds = %land.lhs.true341
  %129 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %126, align 4
  %call345 = call i32 %130(ptr noundef %host, ptr noundef %card.0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call345)
  %tobool346.not = icmp eq i32 %call345, 0
  br i1 %tobool346.not, label %if.then347, label %if.then343.if.end370_crit_edge

if.then343.if.end370_crit_edge:                   ; preds = %if.then343
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end370

if.then347:                                       ; preds = %if.then343
  %131 = ptrtoint ptr %cqe_enabled to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 1, ptr %cqe_enabled, align 4
  %132 = ptrtoint ptr %cmdq_en to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %cmdq_en, align 2, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool351.not = icmp eq i8 %133, 0
  br i1 %tobool351.not, label %if.else360, label %do.end355

do.end355:                                        ; preds = %if.then347
  %init_name.i576 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1, i32 3
  %134 = ptrtoint ptr %init_name.i576 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %init_name.i576, align 8
  %tobool.not.i577 = icmp eq ptr %135, null
  br i1 %tobool.not.i577, label %if.end.i578, label %do.end355.dev_name.exit580_crit_edge

do.end355.dev_name.exit580_crit_edge:             ; preds = %do.end355
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit580

if.end.i578:                                      ; preds = %do.end355
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev357 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1
  %136 = ptrtoint ptr %class_dev357 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %class_dev357, align 4
  br label %dev_name.exit580

dev_name.exit580:                                 ; preds = %if.end.i578, %do.end355.dev_name.exit580_crit_edge
  %retval.0.i579 = phi ptr [ %137, %if.end.i578 ], [ %135, %do.end355.dev_name.exit580_crit_edge ]
  %call359 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %retval.0.i579) #15
  br label %if.end370

if.else360:                                       ; preds = %if.then347
  %hsq_enabled = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 68
  %138 = ptrtoint ptr %hsq_enabled to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 1, ptr %hsq_enabled, align 16
  %init_name.i581 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1, i32 3
  %139 = ptrtoint ptr %init_name.i581 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %init_name.i581, align 8
  %tobool.not.i582 = icmp eq ptr %140, null
  br i1 %tobool.not.i582, label %if.end.i583, label %if.else360.dev_name.exit585_crit_edge

if.else360.dev_name.exit585_crit_edge:            ; preds = %if.else360
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit585

if.end.i583:                                      ; preds = %if.else360
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev365 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1
  %141 = ptrtoint ptr %class_dev365 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %class_dev365, align 4
  br label %dev_name.exit585

dev_name.exit585:                                 ; preds = %if.end.i583, %if.else360.dev_name.exit585_crit_edge
  %retval.0.i584 = phi ptr [ %142, %if.end.i583 ], [ %140, %if.else360.dev_name.exit585_crit_edge ]
  %call367 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %retval.0.i584) #15
  br label %if.end370

if.end370:                                        ; preds = %dev_name.exit585, %dev_name.exit580, %if.then343.if.end370_crit_edge, %land.lhs.true341.if.end370_crit_edge, %if.end335.if.end370_crit_edge
  %caps2371 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 17
  %143 = ptrtoint ptr %caps2371 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %caps2371, align 4
  %and372 = and i32 %144, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and372)
  %tobool373.not = icmp eq i32 %and372, 0
  br i1 %tobool373.not, label %if.end370.if.end386_crit_edge, label %land.lhs.true374

if.end370.if.end386_crit_edge:                    ; preds = %if.end370
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end386

land.lhs.true374:                                 ; preds = %if.end370
  %signal_voltage = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 8
  %145 = ptrtoint ptr %signal_voltage to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %signal_voltage, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %cmp376 = icmp eq i8 %146, 0
  br i1 %cmp376, label %do.end381, label %land.lhs.true374.if.end386_crit_edge

land.lhs.true374.if.end386_crit_edge:             ; preds = %land.lhs.true374
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end386

do.end381:                                        ; preds = %land.lhs.true374
  %init_name.i586 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1, i32 3
  %147 = ptrtoint ptr %init_name.i586 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %init_name.i586, align 8
  %tobool.not.i587 = icmp eq ptr %148, null
  br i1 %tobool.not.i587, label %if.end.i588, label %do.end381.dev_name.exit590_crit_edge

do.end381.dev_name.exit590_crit_edge:             ; preds = %do.end381
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit590

if.end.i588:                                      ; preds = %do.end381
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev383 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1
  %149 = ptrtoint ptr %class_dev383 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %class_dev383, align 4
  br label %dev_name.exit590

dev_name.exit590:                                 ; preds = %if.end.i588, %do.end381.dev_name.exit590_crit_edge
  %retval.0.i589 = phi ptr [ %150, %if.end.i588 ], [ %148, %do.end381.dev_name.exit590_crit_edge ]
  %call385 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %retval.0.i589) #15
  br label %free_card

if.end386:                                        ; preds = %land.lhs.true374.if.end386_crit_edge, %if.end370.if.end386_crit_edge
  br i1 %tobool42.not, label %if.then388, label %if.end386.cleanup395_crit_edge

if.end386.cleanup395_crit_edge:                   ; preds = %if.end386
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup395

if.then388:                                       ; preds = %if.end386
  call void @__sanitizer_cov_trace_pc() #14
  %card389 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 37
  %151 = ptrtoint ptr %card389 to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %card.0, ptr %card389, align 4
  br label %cleanup395

free_card:                                        ; preds = %dev_name.exit590, %if.then313.free_card_crit_edge, %if.then277.free_card_crit_edge, %if.then248.free_card_crit_edge, %if.then237.free_card_crit_edge, %if.end220.free_card_crit_edge, %if.end220.thread, %if.end207.free_card_crit_edge, %if.then181.free_card_crit_edge, %if.then159.free_card_crit_edge, %if.then138.free_card_crit_edge, %if.then117.free_card_crit_edge, %if.then83.free_card_crit_edge
  %err.1 = phi i32 [ %call208, %if.end207.free_card_crit_edge ], [ %call219, %if.end220.free_card_crit_edge ], [ -22, %dev_name.exit590 ], [ %call238, %if.then237.free_card_crit_edge ], [ %call118, %if.then117.free_card_crit_edge ], [ %call84, %if.then83.free_card_crit_edge ], [ %call140, %if.then138.free_card_crit_edge ], [ %call168, %if.then159.free_card_crit_edge ], [ %call184, %if.then181.free_card_crit_edge ], [ %call251, %if.then248.free_card_crit_edge ], [ %call314, %if.then313.free_card_crit_edge ], [ %call216, %if.end220.thread ], [ %call283, %if.then277.free_card_crit_edge ]
  br i1 %tobool42.not, label %free_card.if.then392_crit_edge, label %free_card.cleanup395_crit_edge

free_card.cleanup395_crit_edge:                   ; preds = %free_card
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup395

free_card.if.then392_crit_edge:                   ; preds = %free_card
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then392

if.then392:                                       ; preds = %free_card.if.then392_crit_edge, %if.then124.if.then392_crit_edge, %if.end99.if.then392_crit_edge, %if.end95.if.then392_crit_edge, %if.then90.if.then392_crit_edge
  %err.1598 = phi i32 [ %err.1, %free_card.if.then392_crit_edge ], [ %call100, %if.end99.if.then392_crit_edge ], [ %call96, %if.end95.if.then392_crit_edge ], [ %call92, %if.then90.if.then392_crit_edge ], [ %call125, %if.then124.if.then392_crit_edge ]
  call void @mmc_remove_card(ptr noundef %card.0) #12
  br label %cleanup395

cleanup395:                                       ; preds = %if.then392, %free_card.cleanup395_crit_edge, %if.then388, %if.end386.cleanup395_crit_edge, %if.then67, %dev_name.exit, %do.body49, %if.end37.cleanup395_crit_edge, %if.then31.cleanup395_crit_edge, %if.end23.cleanup395_crit_edge
  %retval.0 = phi i32 [ 0, %if.then388 ], [ 0, %if.end386.cleanup395_crit_edge ], [ %call24, %if.end23.cleanup395_crit_edge ], [ %call33, %if.then31.cleanup395_crit_edge ], [ %call38, %if.end37.cleanup395_crit_edge ], [ %err.1, %free_card.cleanup395_crit_edge ], [ %err.1598, %if.then392 ], [ %14, %if.then67 ], [ -2, %dev_name.exit ], [ -2, %do.body49 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rocr) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cid) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_release_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_add_card(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_remove_card(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_detach_bus(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_switch(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_retune_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_retune_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmc_remove(ptr nocapture noundef %host) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 37
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  tail call void @mmc_remove_card(ptr noundef %1) #12
  %2 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %card, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmc_detect(ptr noundef %host) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 37
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  tail call void @mmc_get_card(ptr noundef %1, ptr noundef null) #12
  %call = tail call i32 @_mmc_detect_card_removed(ptr noundef %host) #12
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  tail call void @mmc_put_card(ptr noundef %3, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card, align 4
  tail call void @mmc_remove_card(ptr noundef %5) #12
  %6 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %card, align 4
  %call.i = tail call i32 @__mmc_claim_host(ptr noundef %host, ptr noundef null, ptr noundef null) #12
  tail call void @mmc_detach_bus(ptr noundef %host) #12
  tail call void @mmc_power_off(ptr noundef %host) #12
  tail call void @mmc_release_host(ptr noundef %host) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_suspend(ptr noundef %host) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @_mmc_suspend(ptr noundef %host, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %card = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 37
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 1
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #12
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %dev2 = getelementptr inbounds %struct.mmc_card, ptr %3, i32 0, i32 1
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev2, i32 noundef 2) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_resume(ptr nocapture noundef readonly %host) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 37
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 1
  tail call void @pm_runtime_enable(ptr noundef %dev) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_runtime_suspend(ptr noundef %host) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %caps = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 16
  %0 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %caps, align 32
  %and = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @_mmc_suspend(ptr noundef %host, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %if.end
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1
  %4 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %do.end.dev_name.exit_crit_edge ]
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %retval.0.i, i32 noundef %call) #15
  br label %cleanup

cleanup:                                          ; preds = %dev_name.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call, %dev_name.exit ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_runtime_resume(ptr noundef %host) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call i32 @__mmc_claim_host(ptr noundef %host, ptr noundef null, ptr noundef null) #12
  %card.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 37
  %0 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card.i, align 4
  %state.i = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state.i, align 4
  %and.i = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %_mmc_resume.exit.thread, label %_mmc_resume.exit

_mmc_resume.exit.thread:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mmc_release_host(ptr noundef %host) #12
  br label %if.end

_mmc_resume.exit:                                 ; preds = %entry
  %ocr.i = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %ocr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ocr.i, align 8
  tail call void @mmc_power_up(ptr noundef %host, i32 noundef %5) #12
  %6 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card.i, align 4
  %ocr3.i = getelementptr inbounds %struct.mmc_card, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %ocr3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ocr3.i, align 8
  %call.i = tail call fastcc i32 @mmc_init_card(ptr noundef %host, i32 noundef %9, ptr noundef %7) #12
  %10 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card.i, align 4
  %state6.i = getelementptr inbounds %struct.mmc_card, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %state6.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state6.i, align 4
  %and7.i = and i32 %13, -33
  store i32 %and7.i, ptr %state6.i, align 4
  tail call void @mmc_release_host(ptr noundef %host) #12
  %14 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.136)
  switch i32 %call.i, label %do.end [
    i32 0, label %_mmc_resume.exit.if.end_crit_edge
    i32 -123, label %_mmc_resume.exit.if.end_crit_edge9
  ]

_mmc_resume.exit.if.end_crit_edge9:               ; preds = %_mmc_resume.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

_mmc_resume.exit.if.end_crit_edge:                ; preds = %_mmc_resume.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %_mmc_resume.exit
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1, i32 3
  %15 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i6 = icmp eq ptr %16, null
  br i1 %tobool.not.i6, label %if.end.i7, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i7:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1
  %17 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i7, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %18, %if.end.i7 ], [ %16, %do.end.dev_name.exit_crit_edge ]
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %retval.0.i, i32 noundef %call.i) #15
  br label %if.end

if.end:                                           ; preds = %dev_name.exit, %_mmc_resume.exit.if.end_crit_edge, %_mmc_resume.exit.if.end_crit_edge9, %_mmc_resume.exit.thread
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_alive(ptr nocapture noundef readonly %host) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 37
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %call = tail call i32 @mmc_send_status(ptr noundef %1, ptr noundef null) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_shutdown(ptr noundef %host) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 37
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.then4_crit_edge, label %land.lhs.true.i

entry.if.then4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4

land.lhs.true.i:                                  ; preds = %entry
  %type.i = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %mmc_can_poweroff_notify.exit, label %land.lhs.true.i.if.then4_crit_edge

land.lhs.true.i.if.then4_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4

mmc_can_poweroff_notify.exit:                     ; preds = %land.lhs.true.i
  %power_off_notification.i = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 21, i32 16
  %4 = ptrtoint ptr %power_off_notification.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %power_off_notification.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp1.i.not = icmp eq i8 %5, 1
  br i1 %cmp1.i.not, label %land.lhs.true, label %mmc_can_poweroff_notify.exit.if.then4_crit_edge

mmc_can_poweroff_notify.exit.if.then4_crit_edge:  ; preds = %mmc_can_poweroff_notify.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4

land.lhs.true:                                    ; preds = %mmc_can_poweroff_notify.exit
  %caps2 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 17
  %6 = ptrtoint ptr %caps2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %caps2, align 4
  %and = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.then, label %land.lhs.true.if.then4_crit_edge

land.lhs.true.if.then4_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4

if.then:                                          ; preds = %land.lhs.true
  %call.i.i = tail call i32 @__mmc_claim_host(ptr noundef %host, ptr noundef null, ptr noundef null) #12
  %8 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card, align 4
  %state.i = getelementptr inbounds %struct.mmc_card, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state.i, align 4
  %and.i = and i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i11 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i11, label %if.end.thread15, label %if.end

if.end.thread15:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mmc_release_host(ptr noundef %host) #12
  br label %if.then4

if.end:                                           ; preds = %if.then
  %ocr.i = getelementptr inbounds %struct.mmc_card, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %ocr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ocr.i, align 8
  tail call void @mmc_power_up(ptr noundef %host, i32 noundef %13) #12
  %14 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %card, align 4
  %ocr3.i = getelementptr inbounds %struct.mmc_card, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %ocr3.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ocr3.i, align 8
  %call.i = tail call fastcc i32 @mmc_init_card(ptr noundef %host, i32 noundef %17, ptr noundef %15) #12
  %18 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %card, align 4
  %state6.i = getelementptr inbounds %struct.mmc_card, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %state6.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %state6.i, align 4
  %and7.i = and i32 %21, -33
  store i32 %and7.i, ptr %state6.i, align 4
  tail call void @mmc_release_host(ptr noundef %host) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end.if.then4_crit_edge, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4

if.then4:                                         ; preds = %if.end.if.then4_crit_edge, %if.end.thread15, %land.lhs.true.if.then4_crit_edge, %mmc_can_poweroff_notify.exit.if.then4_crit_edge, %land.lhs.true.i.if.then4_crit_edge, %entry.if.then4_crit_edge
  %call5 = tail call fastcc i32 @_mmc_suspend(ptr noundef %host, i1 noundef zeroext false)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %err.1 = phi i32 [ %call.i, %if.end.if.end6_crit_edge ], [ %call5, %if.then4 ]
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_mmc_hw_reset(ptr noundef %host) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 37
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %cache_size.i.i = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 21, i32 28
  %2 = ptrtoint ptr %cache_size.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cache_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not.i.i = icmp eq i32 %3, 0
  br i1 %cmp.not.i.i, label %entry._mmc_flush_cache.exit_crit_edge, label %_mmc_cache_enabled.exit.i

entry._mmc_flush_cache.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %_mmc_flush_cache.exit

_mmc_cache_enabled.exit.i:                        ; preds = %entry
  %cache_ctrl.i.i = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 21, i32 7
  %4 = ptrtoint ptr %cache_ctrl.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cache_ctrl.i.i, align 1
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.i.not.i = icmp eq i8 %6, 0
  br i1 %tobool.i.not.i, label %_mmc_cache_enabled.exit.i._mmc_flush_cache.exit_crit_edge, label %if.then.i

_mmc_cache_enabled.exit.i._mmc_flush_cache.exit_crit_edge: ; preds = %_mmc_cache_enabled.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %_mmc_flush_cache.exit

if.then.i:                                        ; preds = %_mmc_cache_enabled.exit.i
  %call1.i = tail call i32 @mmc_switch(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 32, i8 noundef zeroext 1, i32 noundef 30000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.then.i._mmc_flush_cache.exit_crit_edge, label %do.end.i

if.then.i._mmc_flush_cache.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %_mmc_flush_cache.exit

do.end.i:                                         ; preds = %if.then.i
  %init_name.i.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1, i32 3
  %7 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.dev_name.exit.i_crit_edge

do.end.i.dev_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1
  %9 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %class_dev.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %do.end.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %10, %if.end.i.i ], [ %8, %do.end.i.dev_name.exit.i_crit_edge ]
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %retval.0.i.i, i32 noundef %call1.i) #15
  br label %_mmc_flush_cache.exit

_mmc_flush_cache.exit:                            ; preds = %dev_name.exit.i, %if.then.i._mmc_flush_cache.exit_crit_edge, %_mmc_cache_enabled.exit.i._mmc_flush_cache.exit_crit_edge, %entry._mmc_flush_cache.exit_crit_edge
  %caps = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 16
  %11 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %caps, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %tobool.not = icmp sgt i32 %12, -1
  br i1 %tobool.not, label %_mmc_flush_cache.exit.if.else_crit_edge, label %land.lhs.true

_mmc_flush_cache.exit.if.else_crit_edge:          ; preds = %_mmc_flush_cache.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %_mmc_flush_cache.exit
  %ops = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 3
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops, align 4
  %hw_reset = getelementptr inbounds %struct.mmc_host_ops, ptr %14, i32 0, i32 20
  %15 = ptrtoint ptr %hw_reset to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw_reset, align 4
  %tobool2.not = icmp eq ptr %16, null
  br i1 %tobool2.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true3

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true3:                                   ; preds = %land.lhs.true
  %rst_n_function1.i = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 21, i32 8
  %17 = ptrtoint ptr %rst_n_function1.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %rst_n_function1.i, align 8
  %19 = and i8 %18, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %19)
  %cmp.not.i.not = icmp eq i8 %19, 1
  br i1 %cmp.not.i.not, label %if.then, label %land.lhs.true3.if.else_crit_edge

land.lhs.true3.if.else_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  %f_init = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 7
  %20 = ptrtoint ptr %f_init to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %f_init, align 4
  tail call void @mmc_set_clock(ptr noundef %host, i32 noundef %21) #12
  %22 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops, align 4
  %hw_reset7 = getelementptr inbounds %struct.mmc_host_ops, ptr %23, i32 0, i32 20
  %24 = ptrtoint ptr %hw_reset7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw_reset7, align 4
  tail call void %25(ptr noundef %host) #12
  tail call void @mmc_set_initial_state(ptr noundef %host) #12
  br label %if.end

if.else:                                          ; preds = %land.lhs.true3.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %_mmc_flush_cache.exit.if.else_crit_edge
  %ocr = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %ocr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ocr, align 8
  tail call void @mmc_power_cycle(ptr noundef %host, i32 noundef %27) #12
  tail call void @mmc_pwrseq_reset(ptr noundef %host) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ocr8 = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %ocr8 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ocr8, align 8
  %call9 = tail call fastcc i32 @mmc_init_card(ptr noundef %host, i32 noundef %29, ptr noundef %1)
  ret i32 %call9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @_mmc_cache_enabled(ptr nocapture noundef readonly %host) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 37
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %cache_size = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 21, i32 28
  %2 = ptrtoint ptr %cache_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cache_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %cache_ctrl = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 21, i32 7
  %4 = ptrtoint ptr %cache_ctrl to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cache_ctrl, align 1
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool = icmp ne i8 %6, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %7 = phi i1 [ false, %entry.land.end_crit_edge ], [ %tobool, %land.rhs ]
  ret i1 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_mmc_flush_cache(ptr nocapture noundef readonly %host) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %card.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 37
  %0 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card.i, align 4
  %cache_size.i = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 21, i32 28
  %2 = ptrtoint ptr %cache_size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cache_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 0
  br i1 %cmp.not.i, label %entry.if.end5_crit_edge, label %_mmc_cache_enabled.exit

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

_mmc_cache_enabled.exit:                          ; preds = %entry
  %cache_ctrl.i = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 21, i32 7
  %4 = ptrtoint ptr %cache_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cache_ctrl.i, align 1
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.i.not = icmp eq i8 %6, 0
  br i1 %tobool.i.not, label %_mmc_cache_enabled.exit.if.end5_crit_edge, label %if.then

_mmc_cache_enabled.exit.if.end5_crit_edge:        ; preds = %_mmc_cache_enabled.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then:                                          ; preds = %_mmc_cache_enabled.exit
  %call1 = tail call i32 @mmc_switch(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 32, i8 noundef zeroext 1, i32 noundef 30000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then.if.end5_crit_edge, label %do.end

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

do.end:                                           ; preds = %if.then
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1, i32 3
  %7 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1
  %9 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %10, %if.end.i ], [ %8, %do.end.dev_name.exit_crit_edge ]
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %retval.0.i, i32 noundef %call1) #15
  br label %if.end5

if.end5:                                          ; preds = %dev_name.exit, %if.then.if.end5_crit_edge, %_mmc_cache_enabled.exit.if.end5_crit_edge, %entry.if.end5_crit_edge
  %err.0 = phi i32 [ %call1, %dev_name.exit ], [ 0, %if.then.if.end5_crit_edge ], [ 0, %_mmc_cache_enabled.exit.if.end5_crit_edge ], [ 0, %entry.if.end5_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_get_card(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_mmc_detect_card_removed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_put_card(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_power_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_mmc_suspend(ptr noundef %host, i1 noundef zeroext %is_suspend) unnamed_addr #0 align 64 {
entry:
  %cmd.i = alloca %struct.mmc_command, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__mmc_claim_host(ptr noundef %host, ptr noundef null, ptr noundef null) #12
  %card = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 37
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %state = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %and = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %entry
  %cache_size.i.i = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 21, i32 28
  %4 = ptrtoint ptr %cache_size.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cache_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not.i.i = icmp eq i32 %5, 0
  br i1 %cmp.not.i.i, label %if.end.if.end4_crit_edge, label %_mmc_cache_enabled.exit.i

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

_mmc_cache_enabled.exit.i:                        ; preds = %if.end
  %cache_ctrl.i.i = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 21, i32 7
  %6 = ptrtoint ptr %cache_ctrl.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cache_ctrl.i.i, align 1
  %8 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.i.not.i = icmp eq i8 %8, 0
  br i1 %tobool.i.not.i, label %_mmc_cache_enabled.exit.i.if.end4_crit_edge, label %if.then.i

_mmc_cache_enabled.exit.i.if.end4_crit_edge:      ; preds = %_mmc_cache_enabled.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then.i:                                        ; preds = %_mmc_cache_enabled.exit.i
  %call1.i = tail call i32 @mmc_switch(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 32, i8 noundef zeroext 1, i32 noundef 30000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end4_crit_edge, label %do.end.i

if.then.i.if.end4_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

do.end.i:                                         ; preds = %if.then.i
  %init_name.i.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1, i32 3
  %9 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i._mmc_flush_cache.exit_crit_edge

do.end.i._mmc_flush_cache.exit_crit_edge:         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %_mmc_flush_cache.exit

if.end.i.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1
  %11 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %class_dev.i, align 4
  br label %_mmc_flush_cache.exit

_mmc_flush_cache.exit:                            ; preds = %if.end.i.i, %do.end.i._mmc_flush_cache.exit_crit_edge
  %retval.0.i.i = phi ptr [ %12, %if.end.i.i ], [ %10, %do.end.i._mmc_flush_cache.exit_crit_edge ]
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %retval.0.i.i, i32 noundef %call1.i) #15
  br label %out

if.end4:                                          ; preds = %if.then.i.if.end4_crit_edge, %_mmc_cache_enabled.exit.i.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %13 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %card, align 4
  %tobool.not.i52 = icmp eq ptr %14, null
  br i1 %tobool.not.i52, label %if.end4.if.else_crit_edge, label %land.lhs.true.i

if.end4.if.else_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true.i:                                  ; preds = %if.end4
  %type.i = getelementptr inbounds %struct.mmc_card, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i = icmp eq i32 %16, 0
  br i1 %cmp.i, label %mmc_can_poweroff_notify.exit, label %land.lhs.true.i.if.else_crit_edge

land.lhs.true.i.if.else_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

mmc_can_poweroff_notify.exit:                     ; preds = %land.lhs.true.i
  %power_off_notification.i = getelementptr inbounds %struct.mmc_card, ptr %14, i32 0, i32 21, i32 16
  %17 = ptrtoint ptr %power_off_notification.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %power_off_notification.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp1.i.not = icmp eq i8 %18, 1
  br i1 %cmp1.i.not, label %land.lhs.true, label %mmc_can_poweroff_notify.exit.if.else_crit_edge

mmc_can_poweroff_notify.exit.if.else_crit_edge:   ; preds = %mmc_can_poweroff_notify.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %mmc_can_poweroff_notify.exit
  %caps2 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 17
  %19 = ptrtoint ptr %caps2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %caps2, align 4
  %and8 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %21 = and i1 %tobool9.not, %is_suspend
  %and13 = and i32 %20, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %or.cond = select i1 %21, i1 %tobool14.not, i1 false
  br i1 %or.cond, label %land.lhs.true.if.else_crit_edge, label %if.then15

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then15:                                        ; preds = %land.lhs.true
  %generic_cmd6_time.i = getelementptr inbounds %struct.mmc_card, ptr %14, i32 0, i32 21, i32 14
  %power_off_longtime.i = getelementptr inbounds %struct.mmc_card, ptr %14, i32 0, i32 21, i32 15
  %spec.select.i = select i1 %is_suspend, ptr %generic_cmd6_time.i, ptr %power_off_longtime.i
  %22 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %timeout.0.i = load i32, ptr %spec.select.i, align 4
  %conv.i = select i1 %is_suspend, i8 2, i8 3
  %call.i54 = tail call i32 @__mmc_switch(ptr noundef nonnull %14, i8 noundef zeroext 1, i8 noundef zeroext 34, i8 noundef zeroext %conv.i, i32 noundef %timeout.0.i, i8 noundef zeroext 0, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54)
  %tobool.not.i55 = icmp eq i32 %call.i54, 0
  br i1 %tobool.not.i55, label %if.then15.mmc_poweroff_notify.exit_crit_edge, label %do.end.i58

if.then15.mmc_poweroff_notify.exit_crit_edge:     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  br label %mmc_poweroff_notify.exit

do.end.i58:                                       ; preds = %if.then15
  %23 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %14, align 8
  %init_name.i.i56 = getelementptr inbounds %struct.mmc_host, ptr %24, i32 0, i32 1, i32 3
  %25 = ptrtoint ptr %init_name.i.i56 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %init_name.i.i56, align 8
  %tobool.not.i.i57 = icmp eq ptr %26, null
  br i1 %tobool.not.i.i57, label %if.end.i.i60, label %do.end.i58.dev_name.exit.i63_crit_edge

do.end.i58.dev_name.exit.i63_crit_edge:           ; preds = %do.end.i58
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i63

if.end.i.i60:                                     ; preds = %do.end.i58
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev.i59 = getelementptr inbounds %struct.mmc_host, ptr %24, i32 0, i32 1
  %27 = ptrtoint ptr %class_dev.i59 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %class_dev.i59, align 4
  br label %dev_name.exit.i63

dev_name.exit.i63:                                ; preds = %if.end.i.i60, %do.end.i58.dev_name.exit.i63_crit_edge
  %retval.0.i.i61 = phi ptr [ %28, %if.end.i.i60 ], [ %26, %do.end.i58.dev_name.exit.i63_crit_edge ]
  %call4.i62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %retval.0.i.i61, i32 noundef %timeout.0.i) #15
  br label %mmc_poweroff_notify.exit

mmc_poweroff_notify.exit:                         ; preds = %dev_name.exit.i63, %if.then15.mmc_poweroff_notify.exit_crit_edge
  %29 = ptrtoint ptr %power_off_notification.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %power_off_notification.i, align 4
  br label %if.end30

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %mmc_can_poweroff_notify.exit.if.else_crit_edge, %land.lhs.true.i.if.else_crit_edge, %if.end4.if.else_crit_edge
  %ext_csd.i = getelementptr inbounds %struct.mmc_card, ptr %14, i32 0, i32 21
  %30 = ptrtoint ptr %ext_csd.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ext_csd.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %31)
  %cmp.i65 = icmp ult i8 %31, 3
  br i1 %cmp.i65, label %if.else23, label %if.then21

if.then21:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd.i) #12
  %32 = call ptr @memset(ptr %cmd.i, i32 0, i32 48)
  %sa_timeout.i = getelementptr inbounds %struct.mmc_card, ptr %14, i32 0, i32 21, i32 13
  %33 = ptrtoint ptr %sa_timeout.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sa_timeout.i, align 8
  %sub.i = add i32 %34, 9999
  %div.i = udiv i32 %sub.i, 10000
  tail call void @mmc_retune_hold(ptr noundef %host) #12
  %call.i66 = tail call i32 @mmc_deselect_cards(ptr noundef %host) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66)
  %tobool.not.i67 = icmp eq i32 %call.i66, 0
  br i1 %tobool.not.i67, label %if.end.i, label %if.then21.mmc_sleep.exit_crit_edge

if.then21.mmc_sleep.exit_crit_edge:               ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  br label %mmc_sleep.exit

if.end.i:                                         ; preds = %if.then21
  %35 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 5, ptr %cmd.i, align 4
  %rca.i = getelementptr inbounds %struct.mmc_card, ptr %14, i32 0, i32 3
  %36 = ptrtoint ptr %rca.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rca.i, align 4
  %shl.i = shl i32 %37, 16
  %arg.i = getelementptr inbounds %struct.mmc_command, ptr %cmd.i, i32 0, i32 1
  %or.i = or i32 %shl.i, 32768
  %38 = ptrtoint ptr %arg.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or.i, ptr %arg.i, align 4
  %call3.i = call zeroext i1 @mmc_prepare_busy_cmd(ptr noundef %host, ptr noundef nonnull %cmd.i, i32 noundef %div.i) #12
  %call4.i68 = call i32 @mmc_wait_for_cmd(ptr noundef %host, ptr noundef nonnull %cmd.i, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i68)
  %tobool5.not.i = icmp eq i32 %call4.i68, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end.i.mmc_sleep.exit_crit_edge

if.end.i.mmc_sleep.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mmc_sleep.exit

if.end7.i:                                        ; preds = %if.end.i
  %caps.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 16
  %39 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %caps.i, align 32
  %and.i = and i32 %40, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool8.not.i = icmp eq i32 %and.i, 0
  %call3.not.i = xor i1 %call3.i, true
  %brmerge.i = select i1 %tobool8.not.i, i1 true, i1 %call3.not.i
  br i1 %brmerge.i, label %if.end11.i, label %if.end7.i.mmc_sleep.exit_crit_edge

if.end7.i.mmc_sleep.exit_crit_edge:               ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mmc_sleep.exit

if.end11.i:                                       ; preds = %if.end7.i
  %ops.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 3
  %41 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ops.i, align 4
  %card_busy.i = getelementptr inbounds %struct.mmc_host_ops, ptr %42, i32 0, i32 11
  %43 = ptrtoint ptr %card_busy.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %card_busy.i, align 4
  %tobool12.not.i = icmp eq ptr %44, null
  br i1 %tobool12.not.i, label %if.then13.i, label %if.end14.i

if.then13.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 210000, i32 %sub.i)
  %cmp.i.i = icmp ult i32 %sub.i, 210000
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #14
  %mul.i.i = mul nuw nsw i32 %div.i, 1000
  %mul1.i.i = mul nuw nsw i32 %div.i, 1250
  call void @usleep_range_state(i32 noundef %mul.i.i, i32 noundef %mul1.i.i, i32 noundef 2) #12
  br label %mmc_sleep.exit

if.else.i.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @msleep(i32 noundef %div.i) #12
  br label %mmc_sleep.exit

if.end14.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  %call15.i = call i32 @__mmc_poll_for_busy(ptr noundef %host, i32 noundef 0, i32 noundef %div.i, ptr noundef nonnull @mmc_sleep_busy_cb, ptr noundef %host) #12
  br label %mmc_sleep.exit

mmc_sleep.exit:                                   ; preds = %if.end14.i, %if.else.i.i, %if.then.i.i, %if.end7.i.mmc_sleep.exit_crit_edge, %if.end.i.mmc_sleep.exit_crit_edge, %if.then21.mmc_sleep.exit_crit_edge
  %err.0.i69 = phi i32 [ %call.i66, %if.then21.mmc_sleep.exit_crit_edge ], [ %call4.i68, %if.end.i.mmc_sleep.exit_crit_edge ], [ %call15.i, %if.end14.i ], [ 0, %if.end7.i.mmc_sleep.exit_crit_edge ], [ 0, %if.then.i.i ], [ 0, %if.else.i.i ]
  call void @mmc_retune_release(ptr noundef %host) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd.i) #12
  br label %if.end30

if.else23:                                        ; preds = %if.else
  %caps = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 16
  %45 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %caps, align 32
  %and24 = and i32 %46, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.then26, label %if.else23.if.then32_crit_edge

if.else23.if.then32_crit_edge:                    ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then32

if.then26:                                        ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #14
  %call27 = tail call i32 @mmc_deselect_cards(ptr noundef %host) #12
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %mmc_sleep.exit, %mmc_poweroff_notify.exit
  %err.0 = phi i32 [ %call.i54, %mmc_poweroff_notify.exit ], [ %err.0.i69, %mmc_sleep.exit ], [ %call27, %if.then26 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool31.not = icmp eq i32 %err.0, 0
  br i1 %tobool31.not, label %if.end30.if.then32_crit_edge, label %if.end30.out_crit_edge

if.end30.out_crit_edge:                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end30.if.then32_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then32

if.then32:                                        ; preds = %if.end30.if.then32_crit_edge, %if.else23.if.then32_crit_edge
  call void @mmc_power_off(ptr noundef %host) #12
  %47 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %card, align 4
  %state34 = getelementptr inbounds %struct.mmc_card, ptr %48, i32 0, i32 5
  %49 = ptrtoint ptr %state34 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %state34, align 4
  %or = or i32 %50, 32
  store i32 %or, ptr %state34, align 4
  br label %out

out:                                              ; preds = %if.then32, %if.end30.out_crit_edge, %_mmc_flush_cache.exit, %entry.out_crit_edge
  %err.1 = phi i32 [ 0, %entry.out_crit_edge ], [ %call1.i, %_mmc_flush_cache.exit ], [ %err.0, %if.end30.out_crit_edge ], [ 0, %if.then32 ]
  call void @mmc_release_host(ptr noundef %host) #12
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_deselect_cards(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_retune_hold(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mmc_prepare_busy_cmd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_wait_for_cmd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mmc_poll_for_busy(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_sleep_busy_cb(ptr noundef %cb_data, ptr nocapture noundef writeonly %busy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.mmc_host, ptr %cb_data, i32 0, i32 3
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %card_busy = getelementptr inbounds %struct.mmc_host_ops, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %card_busy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card_busy, align 4
  %call = tail call i32 %3(ptr noundef %cb_data) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool = icmp ne i32 %call, 0
  %frombool = zext i1 %tobool to i8
  %4 = ptrtoint ptr %busy to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool, ptr %busy, align 1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_retune_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_power_up(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_send_status(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_set_initial_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_power_cycle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_pwrseq_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_go_idle(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_spi_set_crc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_send_cid(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmc_alloc_card(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_set_relative_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_send_csd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mmc_decode_csd(ptr nocapture noundef %card) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %csd1 = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 20
  %raw_csd = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 16
  %0 = ptrtoint ptr %raw_csd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %raw_csd, align 4
  %shr = lshr i32 %1, 30
  %conv = trunc i32 %shr to i8
  %2 = ptrtoint ptr %csd1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %csd1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %1)
  %cmp = icmp ult i32 %1, 1073741824
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %card, align 8
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 1, i32 3
  %5 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %8, %if.end.i ], [ %6, %do.end.dev_name.exit_crit_edge ]
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef %retval.0.i, i32 noundef %shr) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %shr15 = lshr i32 %1, 26
  %9 = trunc i32 %shr15 to i8
  %conv18 = and i8 %9, 15
  %mmca_vsn = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 20, i32 1
  %10 = ptrtoint ptr %mmca_vsn to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv18, ptr %mmca_vsn, align 1
  %shr25 = lshr i32 %1, 19
  %and27 = and i32 %shr25, 15
  %shr34 = lshr i32 %1, 16
  %and36 = and i32 %shr34, 7
  %arrayidx37 = getelementptr [8 x i32], ptr @taac_exp, i32 0, i32 %and36
  %11 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx37, align 4
  %arrayidx38 = getelementptr [16 x i32], ptr @taac_mant, i32 0, i32 %and27
  %13 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx38, align 4
  %mul = mul i32 %14, %12
  %add = add i32 %mul, 9
  %div = udiv i32 %add, 10
  %taac_ns = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 20, i32 4
  %15 = ptrtoint ptr %taac_ns to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %div, ptr %taac_ns, align 4
  %16 = trunc i32 %1 to i16
  %17 = lshr i16 %16, 8
  %conv49 = mul nuw nsw i16 %17, 100
  %taac_clks = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 20, i32 3
  %18 = ptrtoint ptr %taac_clks to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv49, ptr %taac_clks, align 4
  %shr56 = lshr i32 %1, 3
  %and58 = and i32 %shr56, 15
  %and67 = and i32 %1, 7
  %arrayidx68 = getelementptr [8 x i32], ptr @tran_exp, i32 0, i32 %and67
  %19 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx68, align 4
  %arrayidx69 = getelementptr [16 x i8], ptr @tran_mant, i32 0, i32 %and58
  %21 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx69, align 1
  %conv70 = zext i8 %22 to i32
  %mul71 = mul i32 %20, %conv70
  %max_dtr = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 20, i32 7
  %23 = ptrtoint ptr %max_dtr to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %mul71, ptr %max_dtr, align 4
  %arrayidx77 = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 16, i32 1
  %24 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx77, align 4
  %shr78 = lshr i32 %25, 20
  %conv81 = trunc i32 %shr78 to i16
  %cmdclass = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 20, i32 2
  %26 = ptrtoint ptr %cmdclass to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv81, ptr %cmdclass, align 2
  %arrayidx87 = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 16, i32 2
  %27 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx87, align 4
  %shr88 = lshr i32 %28, 15
  %and90 = and i32 %shr88, 7
  %or = tail call i32 @llvm.fshl.i32(i32 %25, i32 %28, i32 2)
  %and100 = and i32 %or, 4095
  %add101 = add nuw nsw i32 %and100, 1
  %add102 = add nuw nsw i32 %and90, 2
  %shl103 = shl nuw nsw i32 %add101, %add102
  %capacity = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 20, i32 11
  %29 = ptrtoint ptr %capacity to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %shl103, ptr %capacity, align 4
  %shr110 = lshr i32 %25, 16
  %and112 = and i32 %shr110, 15
  %read_blkbits = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 20, i32 9
  %30 = ptrtoint ptr %read_blkbits to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and112, ptr %read_blkbits, align 4
  %read_partial = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 20, i32 12
  %31 = ptrtoint ptr %read_partial to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load = load i8, ptr %read_partial, align 4
  %sh.diff = lshr i32 %25, 8
  %tr.sh.diff = trunc i32 %sh.diff to i8
  %bf.shl = and i8 %tr.sh.diff, -128
  %bf.clear = and i8 %bf.load, 7
  %sh.diff281 = lshr i32 %25, 10
  %tr.sh.diff282 = trunc i32 %sh.diff281 to i8
  %bf.shl133 = and i8 %tr.sh.diff282, 16
  %sh.diff283 = lshr i32 %25, 7
  %tr.sh.diff284 = trunc i32 %sh.diff283 to i8
  %bf.shl148 = and i8 %tr.sh.diff284, 64
  %sh.diff285 = lshr i32 %25, 9
  %tr.sh.diff286 = trunc i32 %sh.diff285 to i8
  %bf.shl163 = and i8 %tr.sh.diff286, 8
  %bf.set = or i8 %bf.shl133, %bf.shl
  %bf.set135 = or i8 %bf.set, %bf.shl148
  %bf.set150 = or i8 %bf.set135, %bf.shl163
  %bf.set165 = or i8 %bf.set150, %bf.clear
  %arrayidx172 = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 16, i32 3
  %32 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx172, align 4
  %shr173 = lshr i32 %33, 26
  %and175 = and i32 %shr173, 7
  %r2w_factor = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 20, i32 6
  %34 = ptrtoint ptr %r2w_factor to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %and175, ptr %r2w_factor, align 4
  %shr182 = lshr i32 %33, 22
  %and184 = and i32 %shr182, 15
  %write_blkbits = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 20, i32 10
  %35 = ptrtoint ptr %write_blkbits to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %and184, ptr %write_blkbits, align 4
  %sh.diff287 = lshr i32 %33, 16
  %tr.sh.diff288 = trunc i32 %sh.diff287 to i8
  %bf.shl196 = and i8 %tr.sh.diff288, 32
  %bf.set198 = or i8 %bf.set165, %bf.shl196
  store i8 %bf.set198, ptr %read_partial, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and184)
  %cmp201 = icmp ugt i32 %and184, 8
  br i1 %cmp201, label %if.then203, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then203:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %shr210 = lshr i32 %28, 10
  %and212 = and i32 %shr210, 31
  %shr219 = lshr i32 %28, 5
  %and221 = and i32 %shr219, 31
  %add222 = add nuw nsw i32 %and212, 1
  %add223 = add nuw nsw i32 %and221, 1
  %mul224 = mul nuw nsw i32 %add222, %add223
  %erase_size = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 20, i32 8
  %sub = add nsw i32 %and184, -9
  %shl227 = shl nuw nsw i32 %mul224, %sub
  %36 = ptrtoint ptr %erase_size to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %shl227, ptr %erase_size, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then203, %if.end.cleanup_crit_edge, %dev_name.exit
  %retval.0 = phi i32 [ -22, %dev_name.exit ], [ 0, %if.then203 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mmc_decode_cid(ptr noundef %card) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %raw_cid = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 15
  %mmca_vsn = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 20, i32 1
  %0 = ptrtoint ptr %mmca_vsn to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mmca_vsn, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.137)
  switch i8 %1, label %do.end [
    i8 0, label %entry.sw.bb_crit_edge
    i8 1, label %entry.sw.bb_crit_edge358
    i8 2, label %entry.sw.bb146_crit_edge
    i8 3, label %entry.sw.bb146_crit_edge359
    i8 4, label %entry.sw.bb146_crit_edge360
  ]

entry.sw.bb146_crit_edge360:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb146

entry.sw.bb146_crit_edge359:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb146

entry.sw.bb146_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb146

entry.sw.bb_crit_edge358:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge358
  %3 = ptrtoint ptr %raw_cid to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %raw_cid, align 4
  %shr = lshr i32 %4, 8
  %cid = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 19
  %5 = ptrtoint ptr %cid to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %shr, ptr %cid, align 4
  %conv10 = trunc i32 %4 to i8
  %prod_name = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 19, i32 1
  %6 = ptrtoint ptr %prod_name to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv10, ptr %prod_name, align 4
  %arrayidx18 = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 15, i32 1
  %7 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx18, align 4
  %shr19 = lshr i32 %8, 24
  %conv22 = trunc i32 %shr19 to i8
  %arrayidx25 = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 19, i32 1, i32 1
  %9 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv22, ptr %arrayidx25, align 1
  %shr32 = lshr i32 %8, 16
  %conv35 = trunc i32 %shr32 to i8
  %arrayidx38 = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 19, i32 1, i32 2
  %10 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv35, ptr %arrayidx38, align 2
  %shr45 = lshr i32 %8, 8
  %conv48 = trunc i32 %shr45 to i8
  %arrayidx51 = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 19, i32 1, i32 3
  %11 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv48, ptr %arrayidx51, align 1
  %conv61 = trunc i32 %8 to i8
  %arrayidx64 = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 19, i32 1, i32 4
  %12 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv61, ptr %arrayidx64, align 4
  %arrayidx70 = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 15, i32 2
  %13 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx70, align 4
  %shr71 = lshr i32 %14, 24
  %conv74 = trunc i32 %shr71 to i8
  %arrayidx77 = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 19, i32 1, i32 5
  %15 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv74, ptr %arrayidx77, align 1
  %shr84 = lshr i32 %14, 16
  %conv87 = trunc i32 %shr84 to i8
  %arrayidx90 = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 19, i32 1, i32 6
  %16 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv87, ptr %arrayidx90, align 2
  %shr97 = lshr i32 %14, 12
  %17 = trunc i32 %shr97 to i8
  %conv100 = and i8 %17, 15
  %hwrev = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 19, i32 6
  %18 = ptrtoint ptr %hwrev to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv100, ptr %hwrev, align 4
  %shr108 = lshr i32 %14, 8
  %19 = trunc i32 %shr108 to i8
  %conv111 = and i8 %19, 15
  %fwrev = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 19, i32 7
  %20 = ptrtoint ptr %fwrev to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv111, ptr %fwrev, align 1
  %arrayidx118 = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 15, i32 3
  %21 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx118, align 4
  %or = tail call i32 @llvm.fshl.i32(i32 %14, i32 %22, i32 16)
  %and122 = and i32 %or, 16777215
  %serial = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 19, i32 3
  %23 = ptrtoint ptr %serial to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and122, ptr %serial, align 4
  %shr130 = lshr i32 %22, 12
  %24 = trunc i32 %shr130 to i8
  %conv133 = and i8 %24, 15
  %month = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 19, i32 8
  %25 = ptrtoint ptr %month to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv133, ptr %month, align 2
  %26 = trunc i32 %22 to i16
  %27 = lshr i16 %26, 8
  %28 = and i16 %27, 15
  %conv144 = add nuw nsw i16 %28, 1997
  %year = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 19, i32 5
  %29 = ptrtoint ptr %year to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv144, ptr %year, align 2
  br label %cleanup

sw.bb146:                                         ; preds = %entry.sw.bb146_crit_edge, %entry.sw.bb146_crit_edge359, %entry.sw.bb146_crit_edge360
  %30 = ptrtoint ptr %raw_cid to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %raw_cid, align 4
  %shr153 = lshr i32 %31, 24
  %cid156 = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 19
  %32 = ptrtoint ptr %cid156 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %shr153, ptr %cid156, align 4
  %shr164 = lshr i32 %31, 8
  %conv167 = trunc i32 %shr164 to i16
  %oemid = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 19, i32 4
  %33 = ptrtoint ptr %oemid to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv167, ptr %oemid, align 4
  %conv178 = trunc i32 %31 to i8
  %prod_name180 = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 19, i32 1
  %34 = ptrtoint ptr %prod_name180 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv178, ptr %prod_name180, align 4
  %arrayidx187 = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 15, i32 1
  %35 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx187, align 4
  %shr188 = lshr i32 %36, 24
  %conv191 = trunc i32 %shr188 to i8
  %arrayidx194 = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 19, i32 1, i32 1
  %37 = ptrtoint ptr %arrayidx194 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv191, ptr %arrayidx194, align 1
  %shr201 = lshr i32 %36, 16
  %conv204 = trunc i32 %shr201 to i8
  %arrayidx207 = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 19, i32 1, i32 2
  %38 = ptrtoint ptr %arrayidx207 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv204, ptr %arrayidx207, align 2
  %shr214 = lshr i32 %36, 8
  %conv217 = trunc i32 %shr214 to i8
  %arrayidx220 = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 19, i32 1, i32 3
  %39 = ptrtoint ptr %arrayidx220 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv217, ptr %arrayidx220, align 1
  %conv230 = trunc i32 %36 to i8
  %arrayidx233 = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 19, i32 1, i32 4
  %40 = ptrtoint ptr %arrayidx233 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv230, ptr %arrayidx233, align 4
  %arrayidx239 = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 15, i32 2
  %41 = ptrtoint ptr %arrayidx239 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx239, align 4
  %shr240 = lshr i32 %42, 24
  %conv243 = trunc i32 %shr240 to i8
  %arrayidx246 = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 19, i32 1, i32 5
  %43 = ptrtoint ptr %arrayidx246 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv243, ptr %arrayidx246, align 1
  %shr253 = lshr i32 %42, 16
  %conv256 = trunc i32 %shr253 to i8
  %prv = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 19, i32 2
  %44 = ptrtoint ptr %prv to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv256, ptr %prv, align 4
  %arrayidx263 = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 15, i32 3
  %45 = ptrtoint ptr %arrayidx263 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx263, align 4
  %or267 = tail call i32 @llvm.fshl.i32(i32 %42, i32 %46, i32 16)
  %serial271 = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 19, i32 3
  %47 = ptrtoint ptr %serial271 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %or267, ptr %serial271, align 4
  %shr278 = lshr i32 %46, 12
  %48 = trunc i32 %shr278 to i8
  %conv281 = and i8 %48, 15
  %month283 = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 19, i32 8
  %49 = ptrtoint ptr %month283 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv281, ptr %month283, align 2
  %50 = trunc i32 %46 to i16
  %51 = lshr i16 %50, 8
  %52 = and i16 %51, 15
  %conv294 = add nuw nsw i16 %52, 1997
  %year296 = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 19, i32 5
  %53 = ptrtoint ptr %year296 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv294, ptr %year296, align 2
  br label %cleanup

do.end:                                           ; preds = %entry
  %54 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %card, align 8
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %55, i32 0, i32 1, i32 3
  %56 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %57, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %55, i32 0, i32 1
  %58 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %59, %if.end.i ], [ %57, %do.end.dev_name.exit_crit_edge ]
  %conv300 = zext i8 %1 to i32
  %call301 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef %retval.0.i, i32 noundef %conv300) #15
  br label %cleanup

cleanup:                                          ; preds = %dev_name.exit, %sw.bb146, %sw.bb
  %retval.0 = phi i32 [ -22, %dev_name.exit ], [ 0, %sw.bb146 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_set_dsr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_select_card(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mmc_read_ext_csd(ptr noundef %card) unnamed_addr #0 align 64 {
entry:
  %ext_csd = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ext_csd) #12
  %0 = ptrtoint ptr %ext_csd to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %ext_csd, align 4, !annotation !306
  %call = tail call i32 @mmc_can_ext_csd(ptr noundef %card) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @mmc_get_ext_csd(ptr noundef %card, ptr noundef nonnull %ext_csd) #12
  %1 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.138)
  switch i32 %call1, label %if.end.cleanup_crit_edge [
    i32 0, label %if.end22
    i32 -22, label %if.end.if.end8_crit_edge
    i32 -38, label %if.end.if.end8_crit_edge41
    i32 -14, label %if.end.if.end8_crit_edge42
  ]

if.end.if.end8_crit_edge42:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.end.if.end8_crit_edge41:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.end.if.end8_crit_edge, %if.end.if.end8_crit_edge41, %if.end.if.end8_crit_edge42
  %capacity = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 20, i32 11
  %2 = ptrtoint ptr %capacity to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %capacity, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %3)
  %cmp9 = icmp eq i32 %3, 2097152
  %4 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card, align 8
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %cmp9, label %do.end, label %do.end15

do.end:                                           ; preds = %if.end8
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %9, %if.end.i ], [ %7, %do.end.dev_name.exit_crit_edge ]
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef %retval.0.i) #15
  br label %cleanup

do.end15:                                         ; preds = %if.end8
  br i1 %tobool.not.i, label %if.end.i38, label %do.end15.dev_name.exit40_crit_edge

do.end15.dev_name.exit40_crit_edge:               ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit40

if.end.i38:                                       ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev18 = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %class_dev18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %class_dev18, align 4
  br label %dev_name.exit40

dev_name.exit40:                                  ; preds = %if.end.i38, %do.end15.dev_name.exit40_crit_edge
  %retval.0.i39 = phi ptr [ %11, %if.end.i38 ], [ %7, %do.end15.dev_name.exit40_crit_edge ]
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef %retval.0.i39) #15
  br label %cleanup

if.end22:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %ext_csd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ext_csd, align 4
  %call23 = call fastcc i32 @mmc_decode_ext_csd(ptr noundef %card, ptr noundef %13)
  %14 = ptrtoint ptr %ext_csd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ext_csd, align 4
  call void @kfree(ptr noundef %15) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %dev_name.exit40, %dev_name.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call23, %if.end22 ], [ 0, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call1, %dev_name.exit ], [ 0, %dev_name.exit40 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ext_csd) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_can_discard(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_can_trim(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mmc_select_timing(ptr noundef %card) unnamed_addr #0 align 64 {
entry:
  %drv_type.i.i30 = alloca i32, align 4
  %drv_type.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mmc_can_ext_csd(ptr noundef %card) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.bus_speed_crit_edge, label %if.end

entry.bus_speed_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %bus_speed

if.end:                                           ; preds = %entry
  %mmc_avail_type = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 39
  %0 = ptrtoint ptr %mmc_avail_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mmc_avail_type, align 4
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 8
  %caps.i = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %caps.i, align 32
  %and.i = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then2.do.end76.i_crit_edge, label %if.end.i

if.then2.do.end76.i_crit_edge:                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end76.i

if.end.i:                                         ; preds = %if.then2
  %and2.i = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.land.lhs.true.i_crit_edge, label %if.end5.i

if.end.i.land.lhs.true.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i

if.end5.i:                                        ; preds = %if.end.i
  %call.i = tail call i32 @mmc_set_signal_voltage(ptr noundef %3, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %if.end5.i.if.end15.i_crit_edge, label %if.end5.i.land.lhs.true.i_crit_edge

if.end5.i.land.lhs.true.i_crit_edge:              ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i

if.end5.i.if.end15.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.i

land.lhs.true.i:                                  ; preds = %if.end5.i.land.lhs.true.i_crit_edge, %if.end.i.land.lhs.true.i_crit_edge
  %err.0153.i = phi i32 [ %call.i, %if.end5.i.land.lhs.true.i_crit_edge ], [ -22, %if.end.i.land.lhs.true.i_crit_edge ]
  %6 = ptrtoint ptr %mmc_avail_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mmc_avail_type, align 4
  %and8.i = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %land.lhs.true.i.do.end76.i_crit_edge, label %if.end12.i

land.lhs.true.i.do.end76.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end76.i

if.end12.i:                                       ; preds = %land.lhs.true.i
  %call11.i = tail call i32 @mmc_set_signal_voltage(ptr noundef %3, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool13.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool13.not.i, label %if.end12.i.if.end15.i_crit_edge, label %if.end12.i.do.end76.i_crit_edge

if.end12.i.do.end76.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end76.i

if.end12.i.if.end15.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.end12.i.if.end15.i_crit_edge, %if.end5.i.if.end15.i_crit_edge
  %call16.i = tail call fastcc i32 @mmc_select_bus_width(ptr noundef %card) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call16.i)
  %cmp.not.i = icmp eq i32 %call16.i, 3
  br i1 %cmp.not.i, label %if.end21.i, label %do.end.i

do.end.i:                                         ; preds = %if.end15.i
  %init_name.i.i = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.dev_name.exit.i_crit_edge

do.end.i.dev_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev.i = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %class_dev.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %do.end.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %11, %if.end.i.i ], [ %9, %do.end.i.dev_name.exit.i_crit_edge ]
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef %retval.0.i.i, i32 noundef %call16.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp20.i = icmp slt i32 %call16.i, 0
  %spec.select.i = select i1 %cmp20.i, i32 %call16.i, i32 -524
  br label %do.end76.i

if.end21.i:                                       ; preds = %if.end15.i
  %generic_cmd6_time.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 14
  %12 = ptrtoint ptr %generic_cmd6_time.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %generic_cmd6_time.i, align 4
  %call22.i = tail call i32 @__mmc_switch(ptr noundef %card, i8 noundef zeroext 1, i8 noundef zeroext -71, i8 noundef zeroext 1, i32 noundef %13, i8 noundef zeroext 0, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.end32.i, label %do.end27.i

do.end27.i:                                       ; preds = %if.end21.i
  %init_name.i129.i = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 1, i32 3
  %14 = ptrtoint ptr %init_name.i129.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i129.i, align 8
  %tobool.not.i130.i = icmp eq ptr %15, null
  br i1 %tobool.not.i130.i, label %if.end.i131.i, label %do.end27.i.dev_name.exit133.i_crit_edge

do.end27.i.dev_name.exit133.i_crit_edge:          ; preds = %do.end27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit133.i

if.end.i131.i:                                    ; preds = %do.end27.i
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev29.i = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %class_dev29.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %class_dev29.i, align 4
  br label %dev_name.exit133.i

dev_name.exit133.i:                               ; preds = %if.end.i131.i, %do.end27.i.dev_name.exit133.i_crit_edge
  %retval.0.i132.i = phi ptr [ %17, %if.end.i131.i ], [ %15, %do.end27.i.dev_name.exit133.i_crit_edge ]
  %call31.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef %retval.0.i132.i, i32 noundef %call22.i) #15
  br label %do.end76.i

if.end32.i:                                       ; preds = %if.end21.i
  tail call void @mmc_set_timing(ptr noundef %3, i32 noundef 1) #12
  %call33.i = tail call i32 @mmc_switch_status(ptr noundef %card, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %if.end36.i, label %if.end32.i.do.end76.i_crit_edge

if.end32.i.do.end76.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end76.i

if.end36.i:                                       ; preds = %if.end32.i
  %hs_max_dtr.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 17
  %18 = ptrtoint ptr %hs_max_dtr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hs_max_dtr.i, align 8
  tail call void @mmc_set_clock(ptr noundef %3, i32 noundef %19) #12
  %20 = ptrtoint ptr %generic_cmd6_time.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %generic_cmd6_time.i, align 4
  %call40.i = tail call i32 @mmc_switch(ptr noundef %card, i8 noundef zeroext 1, i8 noundef zeroext -73, i8 noundef zeroext -122, i32 noundef %21) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %if.end50.i, label %do.end45.i

do.end45.i:                                       ; preds = %if.end36.i
  %init_name.i134.i = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 1, i32 3
  %22 = ptrtoint ptr %init_name.i134.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %init_name.i134.i, align 8
  %tobool.not.i135.i = icmp eq ptr %23, null
  br i1 %tobool.not.i135.i, label %if.end.i136.i, label %do.end45.i.dev_name.exit138.i_crit_edge

do.end45.i.dev_name.exit138.i_crit_edge:          ; preds = %do.end45.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit138.i

if.end.i136.i:                                    ; preds = %do.end45.i
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev47.i = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 1
  %24 = ptrtoint ptr %class_dev47.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %class_dev47.i, align 4
  br label %dev_name.exit138.i

dev_name.exit138.i:                               ; preds = %if.end.i136.i, %do.end45.i.dev_name.exit138.i_crit_edge
  %retval.0.i137.i = phi ptr [ %25, %if.end.i136.i ], [ %23, %do.end45.i.dev_name.exit138.i_crit_edge ]
  %call49.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef %retval.0.i137.i, i32 noundef %call40.i) #15
  br label %do.end76.i

if.end50.i:                                       ; preds = %if.end36.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %drv_type.i.i) #12
  %26 = ptrtoint ptr %drv_type.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %drv_type.i.i, align 4
  %27 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %card, align 8
  %fixed_drv_type1.i.i = getelementptr inbounds %struct.mmc_host, ptr %28, i32 0, i32 18
  %29 = ptrtoint ptr %fixed_drv_type1.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fixed_drv_type1.i.i, align 8
  %raw_driver_strength.i.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 51
  %31 = ptrtoint ptr %raw_driver_strength.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %raw_driver_strength.i.i, align 1
  %33 = or i8 %32, 1
  %or.i.i = zext i8 %33 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %cmp.i.i = icmp sgt i32 %30, -1
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #14
  %shl.i.i = shl nuw i32 1, %30
  %and.i.i = and i32 %shl.i.i, %or.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i139.i = icmp eq i32 %and.i.i, 0
  %spec.select.i.i = select i1 %tobool.not.i139.i, i32 0, i32 %30
  br label %if.end.i140.i

if.else.i.i:                                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #14
  %hs200_max_dtr.i.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 18
  %34 = ptrtoint ptr %hs200_max_dtr.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %hs200_max_dtr.i.i, align 4
  %call.i.i = call i32 @mmc_select_drive_strength(ptr noundef %card, i32 noundef %35, i32 noundef %or.i.i, ptr noundef nonnull %drv_type.i.i) #12
  br label %if.end.i140.i

if.end.i140.i:                                    ; preds = %if.else.i.i, %if.then.i.i
  %drive_strength.0.i.i = phi i32 [ %spec.select.i.i, %if.then.i.i ], [ %call.i.i, %if.else.i.i ]
  %drive_strength4.i.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 40
  %36 = ptrtoint ptr %drive_strength4.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %drive_strength.0.i.i, ptr %drive_strength4.i.i, align 8
  %37 = ptrtoint ptr %drv_type.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %drv_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool5.not.i.i = icmp eq i32 %38, 0
  br i1 %tobool5.not.i.i, label %if.end.i140.i.mmc_select_driver_type.exit.i_crit_edge, label %if.then6.i.i

if.end.i140.i.mmc_select_driver_type.exit.i_crit_edge: ; preds = %if.end.i140.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mmc_select_driver_type.exit.i

if.then6.i.i:                                     ; preds = %if.end.i140.i
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %card, align 8
  call void @mmc_set_driver_type(ptr noundef %40, i32 noundef %38) #12
  br label %mmc_select_driver_type.exit.i

mmc_select_driver_type.exit.i:                    ; preds = %if.then6.i.i, %if.end.i140.i.mmc_select_driver_type.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %drv_type.i.i) #12
  %41 = ptrtoint ptr %drive_strength4.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %drive_strength4.i.i, align 8
  %.tr.i = trunc i32 %42 to i8
  %43 = shl i8 %.tr.i, 4
  %conv.i = or i8 %43, 3
  %44 = ptrtoint ptr %generic_cmd6_time.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %generic_cmd6_time.i, align 4
  %call53.i = call i32 @__mmc_switch(ptr noundef %card, i8 noundef zeroext 1, i8 noundef zeroext -71, i8 noundef zeroext %conv.i, i32 noundef %45, i8 noundef zeroext 0, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %tobool54.not.i = icmp eq i32 %call53.i, 0
  br i1 %tobool54.not.i, label %if.end63.i, label %do.end58.i

do.end58.i:                                       ; preds = %mmc_select_driver_type.exit.i
  %init_name.i141.i = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 1, i32 3
  %46 = ptrtoint ptr %init_name.i141.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %init_name.i141.i, align 8
  %tobool.not.i142.i = icmp eq ptr %47, null
  br i1 %tobool.not.i142.i, label %if.end.i143.i, label %do.end58.i.dev_name.exit145.i_crit_edge

do.end58.i.dev_name.exit145.i_crit_edge:          ; preds = %do.end58.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit145.i

if.end.i143.i:                                    ; preds = %do.end58.i
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev60.i = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 1
  %48 = ptrtoint ptr %class_dev60.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %class_dev60.i, align 4
  br label %dev_name.exit145.i

dev_name.exit145.i:                               ; preds = %if.end.i143.i, %do.end58.i.dev_name.exit145.i_crit_edge
  %retval.0.i144.i = phi ptr [ %49, %if.end.i143.i ], [ %47, %do.end58.i.dev_name.exit145.i_crit_edge ]
  %call62.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, ptr noundef %retval.0.i144.i, i32 noundef %call53.i) #15
  br label %do.end76.i

if.end63.i:                                       ; preds = %mmc_select_driver_type.exit.i
  call void @mmc_set_timing(ptr noundef %3, i32 noundef 10) #12
  %enhanced_strobe.i = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 28, i32 10
  %50 = ptrtoint ptr %enhanced_strobe.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %enhanced_strobe.i, align 1
  %ops.i = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 3
  %51 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ops.i, align 4
  %hs400_enhanced_strobe.i = getelementptr inbounds %struct.mmc_host_ops, ptr %52, i32 0, i32 18
  %53 = ptrtoint ptr %hs400_enhanced_strobe.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hs400_enhanced_strobe.i, align 4
  %tobool64.not.i = icmp eq ptr %54, null
  br i1 %tobool64.not.i, label %if.end63.i.if.end69.i_crit_edge, label %if.then65.i

if.end63.i.if.end69.i_crit_edge:                  ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69.i

if.then65.i:                                      ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #14
  %ios.i = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 28
  call void %54(ptr noundef %3, ptr noundef %ios.i) #12
  br label %if.end69.i

if.end69.i:                                       ; preds = %if.then65.i, %if.end63.i.if.end69.i_crit_edge
  %call70.i = call i32 @mmc_switch_status(ptr noundef %card, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70.i)
  %tobool71.not.i = icmp eq i32 %call70.i, 0
  br i1 %tobool71.not.i, label %if.end69.i.bus_speed_crit_edge, label %if.end69.i.do.end76.i_crit_edge

if.end69.i.do.end76.i_crit_edge:                  ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end76.i

if.end69.i.bus_speed_crit_edge:                   ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bus_speed

do.end76.i:                                       ; preds = %if.end69.i.do.end76.i_crit_edge, %dev_name.exit145.i, %dev_name.exit138.i, %if.end32.i.do.end76.i_crit_edge, %dev_name.exit133.i, %dev_name.exit.i, %if.end12.i.do.end76.i_crit_edge, %land.lhs.true.i.do.end76.i_crit_edge, %if.then2.do.end76.i_crit_edge
  %err.2.i = phi i32 [ %call11.i, %if.end12.i.do.end76.i_crit_edge ], [ %spec.select.i, %dev_name.exit.i ], [ %call22.i, %dev_name.exit133.i ], [ %call33.i, %if.end32.i.do.end76.i_crit_edge ], [ %call40.i, %dev_name.exit138.i ], [ %call53.i, %dev_name.exit145.i ], [ %call70.i, %if.end69.i.do.end76.i_crit_edge ], [ -524, %if.then2.do.end76.i_crit_edge ], [ %err.0153.i, %land.lhs.true.i.do.end76.i_crit_edge ]
  %55 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %card, align 8
  %init_name.i146.i = getelementptr inbounds %struct.mmc_host, ptr %56, i32 0, i32 1, i32 3
  %57 = ptrtoint ptr %init_name.i146.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %init_name.i146.i, align 8
  %tobool.not.i147.i = icmp eq ptr %58, null
  br i1 %tobool.not.i147.i, label %if.end.i148.i, label %do.end76.i.dev_name.exit150.i_crit_edge

do.end76.i.dev_name.exit150.i_crit_edge:          ; preds = %do.end76.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit150.i

if.end.i148.i:                                    ; preds = %do.end76.i
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev79.i = getelementptr inbounds %struct.mmc_host, ptr %56, i32 0, i32 1
  %59 = ptrtoint ptr %class_dev79.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %class_dev79.i, align 4
  br label %dev_name.exit150.i

dev_name.exit150.i:                               ; preds = %if.end.i148.i, %do.end76.i.dev_name.exit150.i_crit_edge
  %retval.0.i149.i = phi ptr [ %60, %if.end.i148.i ], [ %58, %do.end76.i.dev_name.exit150.i_crit_edge ]
  %call81.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %retval.0.i149.i, ptr noundef nonnull @.str.108, i32 noundef %err.2.i) #15
  br label %if.end17

if.else:                                          ; preds = %if.end
  %and5 = and i32 %1, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.else9, label %if.then7

if.then7:                                         ; preds = %if.else
  %61 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %card, align 8
  %signal_voltage.i = getelementptr inbounds %struct.mmc_host, ptr %62, i32 0, i32 28, i32 8
  %63 = ptrtoint ptr %signal_voltage.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %signal_voltage.i, align 1
  %conv.i31 = zext i8 %64 to i32
  %and.i33 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i33)
  %tobool.not.i34 = icmp eq i32 %and.i33, 0
  br i1 %tobool.not.i34, label %if.then7.land.lhs.true.i37_crit_edge, label %if.end.i36

if.then7.land.lhs.true.i37_crit_edge:             ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i37

if.end.i36:                                       ; preds = %if.then7
  %call.i35 = tail call i32 @mmc_set_signal_voltage(ptr noundef %62, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35)
  %tobool2.not.i = icmp eq i32 %call.i35, 0
  br i1 %tobool2.not.i, label %if.end.i36.if.end11.i_crit_edge, label %if.end.i36.land.lhs.true.i37_crit_edge

if.end.i36.land.lhs.true.i37_crit_edge:           ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i37

if.end.i36.if.end11.i_crit_edge:                  ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i

land.lhs.true.i37:                                ; preds = %if.end.i36.land.lhs.true.i37_crit_edge, %if.then7.land.lhs.true.i37_crit_edge
  %err.070.i = phi i32 [ %call.i35, %if.end.i36.land.lhs.true.i37_crit_edge ], [ -22, %if.then7.land.lhs.true.i37_crit_edge ]
  %65 = ptrtoint ptr %mmc_avail_type to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %mmc_avail_type, align 4
  %and4.i = and i32 %66, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i37.if.end17_crit_edge, label %if.end8.i

land.lhs.true.i37.if.end17_crit_edge:             ; preds = %land.lhs.true.i37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.end8.i:                                        ; preds = %land.lhs.true.i37
  %call7.i = tail call i32 @mmc_set_signal_voltage(ptr noundef %62, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool9.not.i38 = icmp eq i32 %call7.i, 0
  br i1 %tobool9.not.i38, label %if.end8.i.if.end11.i_crit_edge, label %if.end8.i.if.end17_crit_edge

if.end8.i.if.end17_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.end8.i.if.end11.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.end8.i.if.end11.i_crit_edge, %if.end.i36.if.end11.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %drv_type.i.i30) #12
  %67 = ptrtoint ptr %drv_type.i.i30 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %drv_type.i.i30, align 4
  %68 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %card, align 8
  %fixed_drv_type1.i.i39 = getelementptr inbounds %struct.mmc_host, ptr %69, i32 0, i32 18
  %70 = ptrtoint ptr %fixed_drv_type1.i.i39 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %fixed_drv_type1.i.i39, align 8
  %raw_driver_strength.i.i40 = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 51
  %72 = ptrtoint ptr %raw_driver_strength.i.i40 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %raw_driver_strength.i.i40, align 1
  %74 = or i8 %73, 1
  %or.i.i41 = zext i8 %74 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %71)
  %cmp.i.i42 = icmp sgt i32 %71, -1
  br i1 %cmp.i.i42, label %if.then.i.i47, label %if.else.i.i50

if.then.i.i47:                                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  %shl.i.i43 = shl nuw i32 1, %71
  %and.i.i44 = and i32 %shl.i.i43, %or.i.i41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i44)
  %tobool.not.i.i45 = icmp eq i32 %and.i.i44, 0
  %spec.select.i.i46 = select i1 %tobool.not.i.i45, i32 0, i32 %71
  br label %if.end.i.i54

if.else.i.i50:                                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  %hs200_max_dtr.i.i48 = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 18
  %75 = ptrtoint ptr %hs200_max_dtr.i.i48 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %hs200_max_dtr.i.i48, align 4
  %call.i.i49 = call i32 @mmc_select_drive_strength(ptr noundef %card, i32 noundef %76, i32 noundef %or.i.i41, ptr noundef nonnull %drv_type.i.i30) #12
  br label %if.end.i.i54

if.end.i.i54:                                     ; preds = %if.else.i.i50, %if.then.i.i47
  %drive_strength.0.i.i51 = phi i32 [ %spec.select.i.i46, %if.then.i.i47 ], [ %call.i.i49, %if.else.i.i50 ]
  %drive_strength4.i.i52 = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 40
  %77 = ptrtoint ptr %drive_strength4.i.i52 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %drive_strength.0.i.i51, ptr %drive_strength4.i.i52, align 8
  %78 = ptrtoint ptr %drv_type.i.i30 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %drv_type.i.i30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool5.not.i.i53 = icmp eq i32 %79, 0
  br i1 %tobool5.not.i.i53, label %if.end.i.i54.mmc_select_driver_type.exit.i56_crit_edge, label %if.then6.i.i55

if.end.i.i54.mmc_select_driver_type.exit.i56_crit_edge: ; preds = %if.end.i.i54
  call void @__sanitizer_cov_trace_pc() #14
  br label %mmc_select_driver_type.exit.i56

if.then6.i.i55:                                   ; preds = %if.end.i.i54
  call void @__sanitizer_cov_trace_pc() #14
  %80 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %card, align 8
  call void @mmc_set_driver_type(ptr noundef %81, i32 noundef %79) #12
  br label %mmc_select_driver_type.exit.i56

mmc_select_driver_type.exit.i56:                  ; preds = %if.then6.i.i55, %if.end.i.i54.mmc_select_driver_type.exit.i56_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %drv_type.i.i30) #12
  %call12.i = call fastcc i32 @mmc_select_bus_width(ptr noundef %card) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp.i = icmp sgt i32 %call12.i, 0
  br i1 %cmp.i, label %if.then14.i, label %mmc_select_driver_type.exit.i56.err28.i_crit_edge

mmc_select_driver_type.exit.i56.err28.i_crit_edge: ; preds = %mmc_select_driver_type.exit.i56
  call void @__sanitizer_cov_trace_pc() #14
  br label %err28.i

if.then14.i:                                      ; preds = %mmc_select_driver_type.exit.i56
  %82 = ptrtoint ptr %drive_strength4.i.i52 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %drive_strength4.i.i52, align 8
  %.tr.i57 = trunc i32 %83 to i8
  %84 = shl i8 %.tr.i57, 4
  %conv15.i = or i8 %84, 2
  %generic_cmd6_time.i58 = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 14
  %85 = ptrtoint ptr %generic_cmd6_time.i58 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %generic_cmd6_time.i58, align 4
  %call16.i59 = call i32 @__mmc_switch(ptr noundef %card, i8 noundef zeroext 1, i8 noundef zeroext -71, i8 noundef zeroext %conv15.i, i32 noundef %86, i8 noundef zeroext 0, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i59)
  %tobool17.not.i = icmp eq i32 %call16.i59, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %if.then14.i.if.then30.i_crit_edge

if.then14.i.if.then30.i_crit_edge:                ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then30.i

if.end19.i:                                       ; preds = %if.then14.i
  %timing.i = getelementptr inbounds %struct.mmc_host, ptr %62, i32 0, i32 28, i32 7
  %87 = ptrtoint ptr %timing.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %timing.i, align 4
  call void @mmc_set_timing(ptr noundef %62, i32 noundef 9) #12
  %call22.i60 = call i32 @mmc_switch_status(ptr noundef %card, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -74, i32 %call22.i60)
  %cmp23.i = icmp eq i32 %call22.i60, -74
  br i1 %cmp23.i, label %if.then25.i, label %if.end19.i.err28.i_crit_edge

if.end19.i.err28.i_crit_edge:                     ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err28.i

if.then25.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv21.i = zext i8 %88 to i32
  call void @mmc_set_timing(ptr noundef %62, i32 noundef %conv21.i) #12
  br label %if.then30.i

err28.i:                                          ; preds = %if.end19.i.err28.i_crit_edge, %mmc_select_driver_type.exit.i56.err28.i_crit_edge
  %err.2.i61 = phi i32 [ %call22.i60, %if.end19.i.err28.i_crit_edge ], [ %call12.i, %mmc_select_driver_type.exit.i56.err28.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2.i61)
  %tobool29.not.i = icmp eq i32 %err.2.i61, 0
  br i1 %tobool29.not.i, label %err28.i.bus_speed_crit_edge, label %err28.i.if.then30.i_crit_edge

err28.i.if.then30.i_crit_edge:                    ; preds = %err28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then30.i

err28.i.bus_speed_crit_edge:                      ; preds = %err28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bus_speed

if.then30.i:                                      ; preds = %err28.i.if.then30.i_crit_edge, %if.then25.i, %if.then14.i.if.then30.i_crit_edge
  %err.278.i = phi i32 [ %err.2.i61, %err28.i.if.then30.i_crit_edge ], [ -74, %if.then25.i ], [ %call16.i59, %if.then14.i.if.then30.i_crit_edge ]
  %call31.i62 = call i32 @mmc_set_signal_voltage(ptr noundef %62, i32 noundef %conv.i31) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i62)
  %tobool32.not.i = icmp eq i32 %call31.i62, 0
  %spec.select.i63 = select i1 %tobool32.not.i, i32 %err.278.i, i32 -5
  %89 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %card, align 8
  %init_name.i.i64 = getelementptr inbounds %struct.mmc_host, ptr %90, i32 0, i32 1, i32 3
  %91 = ptrtoint ptr %init_name.i.i64 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %init_name.i.i64, align 8
  %tobool.not.i66.i = icmp eq ptr %92, null
  br i1 %tobool.not.i66.i, label %if.end.i67.i, label %if.then30.i.dev_name.exit.i67_crit_edge

if.then30.i.dev_name.exit.i67_crit_edge:          ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i67

if.end.i67.i:                                     ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev.i65 = getelementptr inbounds %struct.mmc_host, ptr %90, i32 0, i32 1
  %93 = ptrtoint ptr %class_dev.i65 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %class_dev.i65, align 4
  br label %dev_name.exit.i67

dev_name.exit.i67:                                ; preds = %if.end.i67.i, %if.then30.i.dev_name.exit.i67_crit_edge
  %retval.0.i.i66 = phi ptr [ %94, %if.end.i67.i ], [ %92, %if.then30.i.dev_name.exit.i67_crit_edge ]
  %call37.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %retval.0.i.i66, ptr noundef nonnull @.str.120, i32 noundef %spec.select.i63) #15
  br label %if.end17

if.else9:                                         ; preds = %if.else
  %and11 = and i32 %1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.else9.bus_speed_crit_edge, label %if.then13

if.else9.bus_speed_crit_edge:                     ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #14
  br label %bus_speed

if.then13:                                        ; preds = %if.else9
  %generic_cmd6_time.i69 = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 14
  %95 = ptrtoint ptr %generic_cmd6_time.i69 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %generic_cmd6_time.i69, align 4
  %call.i70 = tail call i32 @__mmc_switch(ptr noundef %card, i8 noundef zeroext 1, i8 noundef zeroext -71, i8 noundef zeroext 1, i32 noundef %96, i8 noundef zeroext 1, i1 noundef zeroext true, i1 noundef zeroext true, i32 noundef 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70)
  %tobool.not.i71 = icmp eq i32 %call.i70, 0
  br i1 %tobool.not.i71, label %if.then13.bus_speed_crit_edge, label %do.end.i74

if.then13.bus_speed_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  br label %bus_speed

do.end.i74:                                       ; preds = %if.then13
  %97 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %card, align 8
  %init_name.i.i72 = getelementptr inbounds %struct.mmc_host, ptr %98, i32 0, i32 1, i32 3
  %99 = ptrtoint ptr %init_name.i.i72 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %init_name.i.i72, align 8
  %tobool.not.i.i73 = icmp eq ptr %100, null
  br i1 %tobool.not.i.i73, label %if.end.i.i76, label %do.end.i74.dev_name.exit.i78_crit_edge

do.end.i74.dev_name.exit.i78_crit_edge:           ; preds = %do.end.i74
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i78

if.end.i.i76:                                     ; preds = %do.end.i74
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev.i75 = getelementptr inbounds %struct.mmc_host, ptr %98, i32 0, i32 1
  %101 = ptrtoint ptr %class_dev.i75 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %class_dev.i75, align 4
  br label %dev_name.exit.i78

dev_name.exit.i78:                                ; preds = %if.end.i.i76, %do.end.i74.dev_name.exit.i78_crit_edge
  %retval.0.i.i77 = phi ptr [ %102, %if.end.i.i76 ], [ %100, %do.end.i74.dev_name.exit.i78_crit_edge ]
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, ptr noundef %retval.0.i.i77, i32 noundef %call.i70) #15
  br label %if.end17

if.end17:                                         ; preds = %dev_name.exit.i78, %dev_name.exit.i67, %if.end8.i.if.end17_crit_edge, %land.lhs.true.i37.if.end17_crit_edge, %dev_name.exit150.i
  %err.0 = phi i32 [ %err.2.i, %dev_name.exit150.i ], [ %call7.i, %if.end8.i.if.end17_crit_edge ], [ %spec.select.i63, %dev_name.exit.i67 ], [ %err.070.i, %land.lhs.true.i37.if.end17_crit_edge ], [ %call.i70, %dev_name.exit.i78 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -74, i32 %err.0)
  %cond = icmp eq i32 %err.0, -74
  br i1 %cond, label %if.end17.bus_speed_crit_edge, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end17.bus_speed_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %bus_speed

bus_speed:                                        ; preds = %if.end17.bus_speed_crit_edge, %if.then13.bus_speed_crit_edge, %if.else9.bus_speed_crit_edge, %err28.i.bus_speed_crit_edge, %if.end69.i.bus_speed_crit_edge, %entry.bus_speed_crit_edge
  %103 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %card, align 8
  %timing.i.i = getelementptr inbounds %struct.mmc_host, ptr %104, i32 0, i32 28, i32 7
  %105 = ptrtoint ptr %timing.i.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %timing.i.i, align 4
  %.off.i = add i8 %106, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i)
  %switch.i = icmp ult i8 %.off.i, 2
  br i1 %switch.i, label %land.lhs.true.i81, label %if.else.i

land.lhs.true.i81:                                ; preds = %bus_speed
  %hs200_max_dtr.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 18
  %107 = ptrtoint ptr %hs200_max_dtr.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %hs200_max_dtr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %108)
  %cmp.not.i80 = icmp eq i32 %108, -1
  br i1 %cmp.not.i80, label %land.lhs.true.i81.if.else11.i_crit_edge, label %land.lhs.true.i81.mmc_set_bus_speed.exit_crit_edge

land.lhs.true.i81.mmc_set_bus_speed.exit_crit_edge: ; preds = %land.lhs.true.i81
  call void @__sanitizer_cov_trace_pc() #14
  br label %mmc_set_bus_speed.exit

land.lhs.true.i81.if.else11.i_crit_edge:          ; preds = %land.lhs.true.i81
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else11.i

if.else.i:                                        ; preds = %bus_speed
  %109 = add i8 %106, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %109)
  %110 = icmp ult i8 %109, -2
  br i1 %110, label %if.else.i.if.else11.i_crit_edge, label %land.lhs.true5.i

if.else.i.if.else11.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else11.i

land.lhs.true5.i:                                 ; preds = %if.else.i
  %hs_max_dtr.i82 = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 17
  %111 = ptrtoint ptr %hs_max_dtr.i82 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %hs_max_dtr.i82, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %112)
  %cmp7.not.i = icmp eq i32 %112, -1
  br i1 %cmp7.not.i, label %land.lhs.true5.i.if.else11.i_crit_edge, label %land.lhs.true5.i.mmc_set_bus_speed.exit_crit_edge

land.lhs.true5.i.mmc_set_bus_speed.exit_crit_edge: ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mmc_set_bus_speed.exit

land.lhs.true5.i.if.else11.i_crit_edge:           ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else11.i

if.else11.i:                                      ; preds = %land.lhs.true5.i.if.else11.i_crit_edge, %if.else.i.if.else11.i_crit_edge, %land.lhs.true.i81.if.else11.i_crit_edge
  %max_dtr12.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 20, i32 7
  %113 = ptrtoint ptr %max_dtr12.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %max_dtr12.i, align 4
  br label %mmc_set_bus_speed.exit

mmc_set_bus_speed.exit:                           ; preds = %if.else11.i, %land.lhs.true5.i.mmc_set_bus_speed.exit_crit_edge, %land.lhs.true.i81.mmc_set_bus_speed.exit_crit_edge
  %max_dtr.0.i = phi i32 [ %108, %land.lhs.true.i81.mmc_set_bus_speed.exit_crit_edge ], [ %112, %land.lhs.true5.i.mmc_set_bus_speed.exit_crit_edge ], [ %114, %if.else11.i ]
  call void @mmc_set_clock(ptr noundef %104, i32 noundef %max_dtr.0.i) #12
  br label %cleanup

cleanup:                                          ; preds = %mmc_set_bus_speed.exit, %if.end17.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %mmc_set_bus_speed.exit ], [ %err.0, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mmc_hs200_tuning(ptr noundef %card) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 8
  %mmc_avail_type = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 39
  %2 = ptrtoint ptr %mmc_avail_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mmc_avail_type, align 4
  %and = and i32 %3, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %land.lhs.true

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

land.lhs.true:                                    ; preds = %entry
  %ios = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 28
  %bus_width = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 28, i32 6
  %4 = ptrtoint ptr %bus_width to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bus_width, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp = icmp eq i8 %5, 3
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then:                                          ; preds = %land.lhs.true
  %ops = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %prepare_hs400_tuning = getelementptr inbounds %struct.mmc_host_ops, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %prepare_hs400_tuning to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prepare_hs400_tuning, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %if.then.if.end8_crit_edge, label %if.then4

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 %9(ptr noundef %1, ptr noundef %ios) #12
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.then.if.end8_crit_edge, %land.lhs.true.if.end8_crit_edge, %entry.if.end8_crit_edge
  %call9 = tail call i32 @mmc_execute_tuning(ptr noundef %card) #12
  ret i32 %call9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mmc_select_bus_width(ptr noundef %card) unnamed_addr #0 align 64 {
entry:
  %bw_ext_csd.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 8
  %call = tail call i32 @mmc_can_ext_csd(ptr noundef %card) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %caps = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %caps, align 32
  %and = and i32 %3, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %for.body.lr.ph

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %lor.lhs.false
  %and4 = lshr i32 %3, 6
  %and4.lobit = and i32 %and4, 1
  %4 = xor i32 %and4.lobit, 1
  %generic_cmd6_time = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 14
  %ext_csd.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21
  %raw_partition_support.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 45
  %raw_erased_mem_count.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 47
  %raw_ext_csd_structure.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 49
  %raw_card_type.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 50
  %raw_s_a_timeout.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 57
  %raw_hc_erase_gap_size.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 58
  %raw_erase_timeout_mult.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 59
  %raw_hc_erase_grp_size.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 60
  %raw_sec_trim_mult.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 62
  %raw_sec_erase_mult.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 63
  %raw_sec_feature_support.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 64
  %raw_trim_mult.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 65
  %raw_sectors.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 72
  %arrayidx100.i = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 21, i32 72, i32 1
  %arrayidx109.i = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 21, i32 72, i32 2
  %arrayidx118.i = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 21, i32 72, i32 3
  %raw_pwr_cl_52_195.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 53
  %raw_pwr_cl_26_195.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 54
  %raw_pwr_cl_52_360.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 55
  %raw_pwr_cl_26_360.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 56
  %raw_pwr_cl_200_195.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 66
  %raw_pwr_cl_200_360.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 67
  %raw_pwr_cl_ddr_52_195.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 68
  %raw_pwr_cl_ddr_52_360.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 69
  %raw_pwr_cl_ddr_200_360.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 70
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 1, i32 3
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %idx.050 = phi i32 [ %4, %for.body.lr.ph ], [ 1, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [2 x i32], ptr @mmc_select_bus_width.ext_csd_bits, i32 0, i32 %idx.050
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %conv = trunc i32 %6 to i8
  %7 = ptrtoint ptr %generic_cmd6_time to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %generic_cmd6_time, align 4
  %call6 = call i32 @mmc_switch(ptr noundef %card, i8 noundef zeroext 1, i8 noundef zeroext -73, i8 noundef zeroext %conv, i32 noundef %8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end9:                                          ; preds = %for.body
  %arrayidx10 = getelementptr [2 x i32], ptr @mmc_select_bus_width.bus_widths, i32 0, i32 %idx.050
  %9 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx10, align 4
  call void @mmc_set_bus_width(ptr noundef %1, i32 noundef %10) #12
  %11 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %caps, align 32
  %and12 = and i32 %12, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bw_ext_csd.i) #12
  %13 = ptrtoint ptr %bw_ext_csd.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 -1 to ptr), ptr %bw_ext_csd.i, align 4, !annotation !306
  %call.i = call i32 @mmc_get_ext_csd(ptr noundef %card, ptr noundef nonnull %bw_ext_csd.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end2.i, label %if.then14.mmc_compare_ext_csds.exit_crit_edge

if.then14.mmc_compare_ext_csds.exit_crit_edge:    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %mmc_compare_ext_csds.exit

if.end2.i:                                        ; preds = %if.then14
  %14 = ptrtoint ptr %raw_partition_support.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %raw_partition_support.i, align 1
  %16 = ptrtoint ptr %bw_ext_csd.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bw_ext_csd.i, align 4
  %arrayidx.i = getelementptr i8, ptr %17, i32 160
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %19)
  %cmp4.i = icmp eq i8 %15, %19
  br i1 %cmp4.i, label %land.lhs.true.i, label %if.end2.i.land.end.i_crit_edge

if.end2.i.land.end.i_crit_edge:                   ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end.i

land.lhs.true.i:                                  ; preds = %if.end2.i
  %20 = ptrtoint ptr %raw_erased_mem_count.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %raw_erased_mem_count.i, align 1
  %arrayidx8.i = getelementptr i8, ptr %17, i32 181
  %22 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx8.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %23)
  %cmp10.i = icmp eq i8 %21, %23
  br i1 %cmp10.i, label %land.lhs.true12.i, label %land.lhs.true.i.land.end.i_crit_edge

land.lhs.true.i.land.end.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end.i

land.lhs.true12.i:                                ; preds = %land.lhs.true.i
  %24 = ptrtoint ptr %ext_csd.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ext_csd.i, align 8
  %arrayidx15.i = getelementptr i8, ptr %17, i32 192
  %26 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx15.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %27)
  %cmp17.i = icmp eq i8 %25, %27
  br i1 %cmp17.i, label %land.lhs.true19.i, label %land.lhs.true12.i.land.end.i_crit_edge

land.lhs.true12.i.land.end.i_crit_edge:           ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end.i

land.lhs.true19.i:                                ; preds = %land.lhs.true12.i
  %28 = ptrtoint ptr %raw_ext_csd_structure.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %raw_ext_csd_structure.i, align 1
  %arrayidx22.i = getelementptr i8, ptr %17, i32 194
  %30 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx22.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %29, i8 %31)
  %cmp24.i = icmp eq i8 %29, %31
  br i1 %cmp24.i, label %land.lhs.true26.i, label %land.lhs.true19.i.land.end.i_crit_edge

land.lhs.true19.i.land.end.i_crit_edge:           ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end.i

land.lhs.true26.i:                                ; preds = %land.lhs.true19.i
  %32 = ptrtoint ptr %raw_card_type.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %raw_card_type.i, align 2
  %arrayidx29.i = getelementptr i8, ptr %17, i32 196
  %34 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx29.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %33, i8 %35)
  %cmp31.i = icmp eq i8 %33, %35
  br i1 %cmp31.i, label %land.lhs.true33.i, label %land.lhs.true26.i.land.end.i_crit_edge

land.lhs.true26.i.land.end.i_crit_edge:           ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end.i

land.lhs.true33.i:                                ; preds = %land.lhs.true26.i
  %36 = ptrtoint ptr %raw_s_a_timeout.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %raw_s_a_timeout.i, align 1
  %arrayidx36.i = getelementptr i8, ptr %17, i32 217
  %38 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx36.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %37, i8 %39)
  %cmp38.i = icmp eq i8 %37, %39
  br i1 %cmp38.i, label %land.lhs.true40.i, label %land.lhs.true33.i.land.end.i_crit_edge

land.lhs.true33.i.land.end.i_crit_edge:           ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end.i

land.lhs.true40.i:                                ; preds = %land.lhs.true33.i
  %40 = ptrtoint ptr %raw_hc_erase_gap_size.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %raw_hc_erase_gap_size.i, align 2
  %arrayidx43.i = getelementptr i8, ptr %17, i32 221
  %42 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx43.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %43)
  %cmp45.i = icmp eq i8 %41, %43
  br i1 %cmp45.i, label %land.lhs.true47.i, label %land.lhs.true40.i.land.end.i_crit_edge

land.lhs.true40.i.land.end.i_crit_edge:           ; preds = %land.lhs.true40.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end.i

land.lhs.true47.i:                                ; preds = %land.lhs.true40.i
  %44 = ptrtoint ptr %raw_erase_timeout_mult.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %raw_erase_timeout_mult.i, align 1
  %arrayidx50.i = getelementptr i8, ptr %17, i32 223
  %46 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx50.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %45, i8 %47)
  %cmp52.i = icmp eq i8 %45, %47
  br i1 %cmp52.i, label %land.lhs.true54.i, label %land.lhs.true47.i.land.end.i_crit_edge

land.lhs.true47.i.land.end.i_crit_edge:           ; preds = %land.lhs.true47.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end.i

land.lhs.true54.i:                                ; preds = %land.lhs.true47.i
  %48 = ptrtoint ptr %raw_hc_erase_grp_size.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %raw_hc_erase_grp_size.i, align 8
  %arrayidx57.i = getelementptr i8, ptr %17, i32 224
  %50 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx57.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %49, i8 %51)
  %cmp59.i = icmp eq i8 %49, %51
  br i1 %cmp59.i, label %land.lhs.true61.i, label %land.lhs.true54.i.land.end.i_crit_edge

land.lhs.true54.i.land.end.i_crit_edge:           ; preds = %land.lhs.true54.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end.i

land.lhs.true61.i:                                ; preds = %land.lhs.true54.i
  %52 = ptrtoint ptr %raw_sec_trim_mult.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %raw_sec_trim_mult.i, align 2
  %arrayidx64.i = getelementptr i8, ptr %17, i32 229
  %54 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx64.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %53, i8 %55)
  %cmp66.i = icmp eq i8 %53, %55
  br i1 %cmp66.i, label %land.lhs.true68.i, label %land.lhs.true61.i.land.end.i_crit_edge

land.lhs.true61.i.land.end.i_crit_edge:           ; preds = %land.lhs.true61.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end.i

land.lhs.true68.i:                                ; preds = %land.lhs.true61.i
  %56 = ptrtoint ptr %raw_sec_erase_mult.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %raw_sec_erase_mult.i, align 1
  %arrayidx71.i = getelementptr i8, ptr %17, i32 230
  %58 = ptrtoint ptr %arrayidx71.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx71.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %57, i8 %59)
  %cmp73.i = icmp eq i8 %57, %59
  br i1 %cmp73.i, label %land.lhs.true75.i, label %land.lhs.true68.i.land.end.i_crit_edge

land.lhs.true68.i.land.end.i_crit_edge:           ; preds = %land.lhs.true68.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end.i

land.lhs.true75.i:                                ; preds = %land.lhs.true68.i
  %60 = ptrtoint ptr %raw_sec_feature_support.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %raw_sec_feature_support.i, align 4
  %arrayidx78.i = getelementptr i8, ptr %17, i32 231
  %62 = ptrtoint ptr %arrayidx78.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx78.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %61, i8 %63)
  %cmp80.i = icmp eq i8 %61, %63
  br i1 %cmp80.i, label %land.lhs.true82.i, label %land.lhs.true75.i.land.end.i_crit_edge

land.lhs.true75.i.land.end.i_crit_edge:           ; preds = %land.lhs.true75.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end.i

land.lhs.true82.i:                                ; preds = %land.lhs.true75.i
  %64 = ptrtoint ptr %raw_trim_mult.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %raw_trim_mult.i, align 1
  %arrayidx85.i = getelementptr i8, ptr %17, i32 232
  %66 = ptrtoint ptr %arrayidx85.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx85.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %65, i8 %67)
  %cmp87.i = icmp eq i8 %65, %67
  br i1 %cmp87.i, label %land.lhs.true89.i, label %land.lhs.true82.i.land.end.i_crit_edge

land.lhs.true82.i.land.end.i_crit_edge:           ; preds = %land.lhs.true82.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end.i

land.lhs.true89.i:                                ; preds = %land.lhs.true82.i
  %68 = ptrtoint ptr %raw_sectors.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %raw_sectors.i, align 4
  %arrayidx93.i = getelementptr i8, ptr %17, i32 212
  %70 = ptrtoint ptr %arrayidx93.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx93.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %69, i8 %71)
  %cmp95.i = icmp eq i8 %69, %71
  br i1 %cmp95.i, label %land.lhs.true97.i, label %land.lhs.true89.i.land.end.i_crit_edge

land.lhs.true89.i.land.end.i_crit_edge:           ; preds = %land.lhs.true89.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end.i

land.lhs.true97.i:                                ; preds = %land.lhs.true89.i
  %72 = ptrtoint ptr %arrayidx100.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx100.i, align 1
  %arrayidx102.i = getelementptr i8, ptr %17, i32 213
  %74 = ptrtoint ptr %arrayidx102.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx102.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %73, i8 %75)
  %cmp104.i = icmp eq i8 %73, %75
  br i1 %cmp104.i, label %land.lhs.true106.i, label %land.lhs.true97.i.land.end.i_crit_edge

land.lhs.true97.i.land.end.i_crit_edge:           ; preds = %land.lhs.true97.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end.i

land.lhs.true106.i:                               ; preds = %land.lhs.true97.i
  %76 = ptrtoint ptr %arrayidx109.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx109.i, align 2
  %arrayidx111.i = getelementptr i8, ptr %17, i32 214
  %78 = ptrtoint ptr %arrayidx111.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx111.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %77, i8 %79)
  %cmp113.i = icmp eq i8 %77, %79
  br i1 %cmp113.i, label %land.lhs.true115.i, label %land.lhs.true106.i.land.end.i_crit_edge

land.lhs.true106.i.land.end.i_crit_edge:          ; preds = %land.lhs.true106.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end.i

land.lhs.true115.i:                               ; preds = %land.lhs.true106.i
  %80 = ptrtoint ptr %arrayidx118.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx118.i, align 1
  %arrayidx120.i = getelementptr i8, ptr %17, i32 215
  %82 = ptrtoint ptr %arrayidx120.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx120.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %81, i8 %83)
  %cmp122.i = icmp eq i8 %81, %83
  br i1 %cmp122.i, label %land.lhs.true124.i, label %land.lhs.true115.i.land.end.i_crit_edge

land.lhs.true115.i.land.end.i_crit_edge:          ; preds = %land.lhs.true115.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end.i

land.lhs.true124.i:                               ; preds = %land.lhs.true115.i
  %84 = ptrtoint ptr %raw_pwr_cl_52_195.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %raw_pwr_cl_52_195.i, align 1
  %arrayidx127.i = getelementptr i8, ptr %17, i32 200
  %86 = ptrtoint ptr %arrayidx127.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx127.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %85, i8 %87)
  %cmp129.i = icmp eq i8 %85, %87
  br i1 %cmp129.i, label %land.lhs.true131.i, label %land.lhs.true124.i.land.end.i_crit_edge

land.lhs.true124.i.land.end.i_crit_edge:          ; preds = %land.lhs.true124.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end.i

land.lhs.true131.i:                               ; preds = %land.lhs.true124.i
  %88 = ptrtoint ptr %raw_pwr_cl_26_195.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %raw_pwr_cl_26_195.i, align 2
  %arrayidx134.i = getelementptr i8, ptr %17, i32 201
  %90 = ptrtoint ptr %arrayidx134.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx134.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %89, i8 %91)
  %cmp136.i = icmp eq i8 %89, %91
  br i1 %cmp136.i, label %land.lhs.true138.i, label %land.lhs.true131.i.land.end.i_crit_edge

land.lhs.true131.i.land.end.i_crit_edge:          ; preds = %land.lhs.true131.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end.i

land.lhs.true138.i:                               ; preds = %land.lhs.true131.i
  %92 = ptrtoint ptr %raw_pwr_cl_52_360.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %raw_pwr_cl_52_360.i, align 1
  %arrayidx141.i = getelementptr i8, ptr %17, i32 202
  %94 = ptrtoint ptr %arrayidx141.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx141.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %93, i8 %95)
  %cmp143.i = icmp eq i8 %93, %95
  br i1 %cmp143.i, label %land.lhs.true145.i, label %land.lhs.true138.i.land.end.i_crit_edge

land.lhs.true138.i.land.end.i_crit_edge:          ; preds = %land.lhs.true138.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end.i

land.lhs.true145.i:                               ; preds = %land.lhs.true138.i
  %96 = ptrtoint ptr %raw_pwr_cl_26_360.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %raw_pwr_cl_26_360.i, align 4
  %arrayidx148.i = getelementptr i8, ptr %17, i32 203
  %98 = ptrtoint ptr %arrayidx148.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx148.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %97, i8 %99)
  %cmp150.i = icmp eq i8 %97, %99
  br i1 %cmp150.i, label %land.lhs.true152.i, label %land.lhs.true145.i.land.end.i_crit_edge

land.lhs.true145.i.land.end.i_crit_edge:          ; preds = %land.lhs.true145.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end.i

land.lhs.true152.i:                               ; preds = %land.lhs.true145.i
  %100 = ptrtoint ptr %raw_pwr_cl_200_195.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %raw_pwr_cl_200_195.i, align 2
  %arrayidx155.i = getelementptr i8, ptr %17, i32 236
  %102 = ptrtoint ptr %arrayidx155.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx155.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %101, i8 %103)
  %cmp157.i = icmp eq i8 %101, %103
  br i1 %cmp157.i, label %land.lhs.true159.i, label %land.lhs.true152.i.land.end.i_crit_edge

land.lhs.true152.i.land.end.i_crit_edge:          ; preds = %land.lhs.true152.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end.i

land.lhs.true159.i:                               ; preds = %land.lhs.true152.i
  %104 = ptrtoint ptr %raw_pwr_cl_200_360.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %raw_pwr_cl_200_360.i, align 1
  %arrayidx162.i = getelementptr i8, ptr %17, i32 237
  %106 = ptrtoint ptr %arrayidx162.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx162.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %105, i8 %107)
  %cmp164.i = icmp eq i8 %105, %107
  br i1 %cmp164.i, label %land.lhs.true166.i, label %land.lhs.true159.i.land.end.i_crit_edge

land.lhs.true159.i.land.end.i_crit_edge:          ; preds = %land.lhs.true159.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end.i

land.lhs.true166.i:                               ; preds = %land.lhs.true159.i
  %108 = ptrtoint ptr %raw_pwr_cl_ddr_52_195.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %raw_pwr_cl_ddr_52_195.i, align 8
  %arrayidx169.i = getelementptr i8, ptr %17, i32 238
  %110 = ptrtoint ptr %arrayidx169.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx169.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %109, i8 %111)
  %cmp171.i = icmp eq i8 %109, %111
  br i1 %cmp171.i, label %land.lhs.true173.i, label %land.lhs.true166.i.land.end.i_crit_edge

land.lhs.true166.i.land.end.i_crit_edge:          ; preds = %land.lhs.true166.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end.i

land.lhs.true173.i:                               ; preds = %land.lhs.true166.i
  %112 = ptrtoint ptr %raw_pwr_cl_ddr_52_360.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %raw_pwr_cl_ddr_52_360.i, align 1
  %arrayidx176.i = getelementptr i8, ptr %17, i32 239
  %114 = ptrtoint ptr %arrayidx176.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx176.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %113, i8 %115)
  %cmp178.i = icmp eq i8 %113, %115
  br i1 %cmp178.i, label %land.rhs.i, label %land.lhs.true173.i.land.end.i_crit_edge

land.lhs.true173.i.land.end.i_crit_edge:          ; preds = %land.lhs.true173.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end.i

land.rhs.i:                                       ; preds = %land.lhs.true173.i
  call void @__sanitizer_cov_trace_pc() #14
  %116 = ptrtoint ptr %raw_pwr_cl_ddr_200_360.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %raw_pwr_cl_ddr_200_360.i, align 2
  %arrayidx182.i = getelementptr i8, ptr %17, i32 253
  %118 = ptrtoint ptr %arrayidx182.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx182.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %117, i8 %119)
  %cmp184.not.i = icmp eq i8 %117, %119
  %phi.sel.i = select i1 %cmp184.not.i, i32 0, i32 -22
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %land.lhs.true173.i.land.end.i_crit_edge, %land.lhs.true166.i.land.end.i_crit_edge, %land.lhs.true159.i.land.end.i_crit_edge, %land.lhs.true152.i.land.end.i_crit_edge, %land.lhs.true145.i.land.end.i_crit_edge, %land.lhs.true138.i.land.end.i_crit_edge, %land.lhs.true131.i.land.end.i_crit_edge, %land.lhs.true124.i.land.end.i_crit_edge, %land.lhs.true115.i.land.end.i_crit_edge, %land.lhs.true106.i.land.end.i_crit_edge, %land.lhs.true97.i.land.end.i_crit_edge, %land.lhs.true89.i.land.end.i_crit_edge, %land.lhs.true82.i.land.end.i_crit_edge, %land.lhs.true75.i.land.end.i_crit_edge, %land.lhs.true68.i.land.end.i_crit_edge, %land.lhs.true61.i.land.end.i_crit_edge, %land.lhs.true54.i.land.end.i_crit_edge, %land.lhs.true47.i.land.end.i_crit_edge, %land.lhs.true40.i.land.end.i_crit_edge, %land.lhs.true33.i.land.end.i_crit_edge, %land.lhs.true26.i.land.end.i_crit_edge, %land.lhs.true19.i.land.end.i_crit_edge, %land.lhs.true12.i.land.end.i_crit_edge, %land.lhs.true.i.land.end.i_crit_edge, %if.end2.i.land.end.i_crit_edge
  %120 = phi i32 [ -22, %land.lhs.true173.i.land.end.i_crit_edge ], [ -22, %land.lhs.true166.i.land.end.i_crit_edge ], [ -22, %land.lhs.true159.i.land.end.i_crit_edge ], [ -22, %land.lhs.true152.i.land.end.i_crit_edge ], [ -22, %land.lhs.true145.i.land.end.i_crit_edge ], [ -22, %land.lhs.true138.i.land.end.i_crit_edge ], [ -22, %land.lhs.true131.i.land.end.i_crit_edge ], [ -22, %land.lhs.true124.i.land.end.i_crit_edge ], [ -22, %land.lhs.true115.i.land.end.i_crit_edge ], [ -22, %land.lhs.true106.i.land.end.i_crit_edge ], [ -22, %land.lhs.true97.i.land.end.i_crit_edge ], [ -22, %land.lhs.true89.i.land.end.i_crit_edge ], [ -22, %land.lhs.true82.i.land.end.i_crit_edge ], [ -22, %land.lhs.true75.i.land.end.i_crit_edge ], [ -22, %land.lhs.true68.i.land.end.i_crit_edge ], [ -22, %land.lhs.true61.i.land.end.i_crit_edge ], [ -22, %land.lhs.true54.i.land.end.i_crit_edge ], [ -22, %land.lhs.true47.i.land.end.i_crit_edge ], [ -22, %land.lhs.true40.i.land.end.i_crit_edge ], [ -22, %land.lhs.true33.i.land.end.i_crit_edge ], [ -22, %land.lhs.true26.i.land.end.i_crit_edge ], [ -22, %land.lhs.true19.i.land.end.i_crit_edge ], [ -22, %land.lhs.true12.i.land.end.i_crit_edge ], [ -22, %land.lhs.true.i.land.end.i_crit_edge ], [ -22, %if.end2.i.land.end.i_crit_edge ], [ %phi.sel.i, %land.rhs.i ]
  call void @kfree(ptr noundef %17) #12
  br label %mmc_compare_ext_csds.exit

mmc_compare_ext_csds.exit:                        ; preds = %land.end.i, %if.then14.mmc_compare_ext_csds.exit_crit_edge
  %retval.0.i = phi i32 [ %120, %land.end.i ], [ %call.i, %if.then14.mmc_compare_ext_csds.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bw_ext_csd.i) #12
  br label %if.end18

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %conv16 = trunc i32 %10 to i8
  %call17 = call i32 @mmc_bus_test(ptr noundef %card, i8 noundef zeroext %conv16) #12
  br label %if.end18

if.end18:                                         ; preds = %if.else, %mmc_compare_ext_csds.exit
  %err.1 = phi i32 [ %call17, %if.else ], [ %retval.0.i, %mmc_compare_ext_csds.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool19.not = icmp eq i32 %err.1, 0
  br i1 %tobool19.not, label %if.end18.cleanup_crit_edge, label %do.end

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %if.end18
  %121 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i46 = icmp eq ptr %122, null
  br i1 %tobool.not.i46, label %if.end.i47, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i47:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %123 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i47, %do.end.dev_name.exit_crit_edge
  %retval.0.i48 = phi ptr [ %124, %if.end.i47 ], [ %122, %do.end.dev_name.exit_crit_edge ]
  %shl = shl nuw i32 1, %10
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, ptr noundef %retval.0.i48, i32 noundef %shl) #15
  br label %for.inc

for.inc:                                          ; preds = %dev_name.exit, %for.body.for.inc_crit_edge
  %err.2 = phi i32 [ %call6, %for.body.for.inc_crit_edge ], [ %err.1, %dev_name.exit ]
  %cmp = icmp eq i32 %idx.050, 0
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %10, %if.end18.cleanup_crit_edge ], [ %err.2, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mmc_select_hs_ddr(ptr noundef %card) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 8
  %mmc_avail_type = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 39
  %2 = ptrtoint ptr %mmc_avail_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mmc_avail_type, align 4
  %and = and i32 %3, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %bus_width2 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 28, i32 6
  %4 = ptrtoint ptr %bus_width2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bus_width2, align 1
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp = icmp eq i8 %5, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp6 = icmp eq i8 %5, 3
  %conv8 = select i1 %cmp6, i8 6, i8 5
  %generic_cmd6_time = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 14
  %6 = ptrtoint ptr %generic_cmd6_time to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %generic_cmd6_time, align 4
  %call = tail call i32 @__mmc_switch(ptr noundef %card, i8 noundef zeroext 1, i8 noundef zeroext -73, i8 noundef zeroext %conv8, i32 noundef %7, i8 noundef zeroext 8, i1 noundef zeroext true, i1 noundef zeroext true, i32 noundef 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool9.not = icmp eq i32 %call, 0
  br i1 %tobool9.not, label %if.end13, label %do.end

do.end:                                           ; preds = %if.end5
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %11, %if.end.i ], [ %9, %do.end.dev_name.exit_crit_edge ]
  %shl = shl nuw i32 1, %conv
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, ptr noundef %retval.0.i, i32 noundef %shl) #15
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  %12 = ptrtoint ptr %mmc_avail_type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mmc_avail_type, align 4
  %and15 = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end13.if.end22_crit_edge, label %if.then17

if.end13.if.end22_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then17:                                        ; preds = %if.end13
  %call18 = tail call i32 @mmc_set_signal_voltage(ptr noundef %1, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then17.cleanup_crit_edge, label %if.then17.if.end22_crit_edge

if.then17.if.end22_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end22:                                         ; preds = %if.then17.if.end22_crit_edge, %if.end13.if.end22_crit_edge
  %err.0 = phi i32 [ %call18, %if.then17.if.end22_crit_edge ], [ 0, %if.end13.if.end22_crit_edge ]
  %14 = ptrtoint ptr %mmc_avail_type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mmc_avail_type, align 4
  %and24 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end22.if.end30_crit_edge, label %land.lhs.true

if.end22.if.end30_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

land.lhs.true:                                    ; preds = %if.end22
  %caps = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 16
  %16 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %caps, align 32
  %and26 = and i32 %17, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %land.lhs.true.if.end30_crit_edge, label %if.then28

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then28:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call29 = tail call i32 @mmc_set_signal_voltage(ptr noundef %1, i32 noundef 1) #12
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %land.lhs.true.if.end30_crit_edge, %if.end22.if.end30_crit_edge
  %err.1 = phi i32 [ %call29, %if.then28 ], [ %err.0, %land.lhs.true.if.end30_crit_edge ], [ %err.0, %if.end22.if.end30_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool31.not = icmp eq i32 %err.1, 0
  br i1 %tobool31.not, label %if.end30.cleanup_crit_edge, label %if.then32

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  %call33 = tail call i32 @mmc_set_signal_voltage(ptr noundef %1, i32 noundef 0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %if.end30.cleanup_crit_edge, %if.then17.cleanup_crit_edge, %dev_name.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %dev_name.exit ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then17.cleanup_crit_edge ], [ %call33, %if.then32 ], [ 0, %if.end30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mmc_select_powerclass(ptr noundef %card) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 8
  %call = tail call i32 @mmc_can_ext_csd(ptr noundef %card) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %bus_width2 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 28, i32 6
  %2 = ptrtoint ptr %bus_width2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bus_width2, align 1
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %mmc_avail_type = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 39
  %4 = ptrtoint ptr %mmc_avail_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mmc_avail_type, align 4
  %and = and i32 %5, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp8 = icmp eq i8 %3, 3
  %cond = select i1 %cmp8, i32 6, i32 5
  %cond12 = select i1 %cmp8, i32 2, i32 1
  %ext_csd_bits.0 = select i1 %tobool6.not, i32 %cond12, i32 %cond
  %6 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card, align 8
  %ios.i = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 28
  %vdd.i = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 28, i32 1
  %8 = ptrtoint ptr %vdd.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %vdd.i, align 4
  %conv.i = zext i16 %9 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %10 = zext i32 %shl.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.139)
  switch i32 %shl.i, label %do.end.i [
    i32 128, label %sw.bb.i
    i32 32768, label %if.end5.sw.bb24.i_crit_edge
    i32 65536, label %if.end5.sw.bb24.i_crit_edge8
    i32 131072, label %if.end5.sw.bb24.i_crit_edge9
    i32 262144, label %if.end5.sw.bb24.i_crit_edge10
    i32 524288, label %if.end5.sw.bb24.i_crit_edge11
    i32 1048576, label %if.end5.sw.bb24.i_crit_edge12
    i32 2097152, label %if.end5.sw.bb24.i_crit_edge13
    i32 4194304, label %if.end5.sw.bb24.i_crit_edge14
    i32 8388608, label %if.end5.sw.bb24.i_crit_edge15
  ]

if.end5.sw.bb24.i_crit_edge15:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb24.i

if.end5.sw.bb24.i_crit_edge14:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb24.i

if.end5.sw.bb24.i_crit_edge13:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb24.i

if.end5.sw.bb24.i_crit_edge12:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb24.i

if.end5.sw.bb24.i_crit_edge11:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb24.i

if.end5.sw.bb24.i_crit_edge10:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb24.i

if.end5.sw.bb24.i_crit_edge9:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb24.i

if.end5.sw.bb24.i_crit_edge8:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb24.i

if.end5.sw.bb24.i_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb24.i

sw.bb.i:                                          ; preds = %if.end5
  %11 = ptrtoint ptr %ios.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ios.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26000001, i32 %12)
  %cmp.i = icmp ult i32 %12, 26000001
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  %raw_pwr_cl_26_195.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 54
  %13 = ptrtoint ptr %raw_pwr_cl_26_195.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %raw_pwr_cl_26_195.i, align 2
  br label %sw.epilog.i

if.else.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 52000001, i32 %12)
  %cmp8.i = icmp ult i32 %12, 52000001
  br i1 %cmp8.i, label %if.then10.i, label %if.else15.i

if.then10.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %raw_pwr_cl_52_195.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 53
  %raw_pwr_cl_ddr_52_195.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 68
  %cond.in.in.i = select i1 %tobool6.not, ptr %raw_pwr_cl_52_195.i, ptr %raw_pwr_cl_ddr_52_195.i
  %15 = ptrtoint ptr %cond.in.in.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %cond.in.i = load i8, ptr %cond.in.in.i, align 1
  br label %sw.epilog.i

if.else15.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000001, i32 %12)
  %cmp18.i = icmp ult i32 %12, 200000001
  br i1 %cmp18.i, label %if.then20.i, label %if.else15.i.sw.epilog.i_crit_edge

if.else15.i.sw.epilog.i_crit_edge:                ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

if.then20.i:                                      ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #14
  %raw_pwr_cl_200_195.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 66
  %16 = ptrtoint ptr %raw_pwr_cl_200_195.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %raw_pwr_cl_200_195.i, align 2
  br label %sw.epilog.i

sw.bb24.i:                                        ; preds = %if.end5.sw.bb24.i_crit_edge, %if.end5.sw.bb24.i_crit_edge8, %if.end5.sw.bb24.i_crit_edge9, %if.end5.sw.bb24.i_crit_edge10, %if.end5.sw.bb24.i_crit_edge11, %if.end5.sw.bb24.i_crit_edge12, %if.end5.sw.bb24.i_crit_edge13, %if.end5.sw.bb24.i_crit_edge14, %if.end5.sw.bb24.i_crit_edge15
  %18 = ptrtoint ptr %ios.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ios.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26000001, i32 %19)
  %cmp27.i = icmp ult i32 %19, 26000001
  br i1 %cmp27.i, label %if.then29.i, label %if.else31.i

if.then29.i:                                      ; preds = %sw.bb24.i
  call void @__sanitizer_cov_trace_pc() #14
  %raw_pwr_cl_26_360.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 56
  %20 = ptrtoint ptr %raw_pwr_cl_26_360.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %raw_pwr_cl_26_360.i, align 4
  br label %sw.epilog.i

if.else31.i:                                      ; preds = %sw.bb24.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 52000001, i32 %19)
  %cmp34.i = icmp ult i32 %19, 52000001
  br i1 %cmp34.i, label %if.then36.i, label %if.else45.i

if.then36.i:                                      ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #14
  %raw_pwr_cl_52_360.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 55
  %raw_pwr_cl_ddr_52_360.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 69
  %cond44.in.in.i = select i1 %tobool6.not, ptr %raw_pwr_cl_52_360.i, ptr %raw_pwr_cl_ddr_52_360.i
  %22 = ptrtoint ptr %cond44.in.in.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %cond44.in.i = load i8, ptr %cond44.in.in.i, align 1
  br label %sw.epilog.i

if.else45.i:                                      ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000001, i32 %19)
  %cmp48.i = icmp ult i32 %19, 200000001
  br i1 %cmp48.i, label %if.then50.i, label %if.else45.i.sw.epilog.i_crit_edge

if.else45.i.sw.epilog.i_crit_edge:                ; preds = %if.else45.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

if.then50.i:                                      ; preds = %if.else45.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %ext_csd_bits.0)
  %cmp51.i = icmp eq i32 %ext_csd_bits.0, 6
  %raw_pwr_cl_ddr_200_360.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 70
  %raw_pwr_cl_200_360.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 67
  %cond58.in.in.i = select i1 %cmp51.i, ptr %raw_pwr_cl_ddr_200_360.i, ptr %raw_pwr_cl_200_360.i
  %23 = ptrtoint ptr %cond58.in.in.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %cond58.in.i = load i8, ptr %cond58.in.in.i, align 1
  br label %sw.epilog.i

do.end.i:                                         ; preds = %if.end5
  %init_name.i.i = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 1, i32 3
  %24 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.__mmc_select_powerclass.exit.thread5_crit_edge

do.end.i.__mmc_select_powerclass.exit.thread5_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__mmc_select_powerclass.exit.thread5

if.end.i.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev.i = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 1
  %26 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %class_dev.i, align 4
  br label %__mmc_select_powerclass.exit.thread5

__mmc_select_powerclass.exit.thread5:             ; preds = %if.end.i.i, %do.end.i.__mmc_select_powerclass.exit.thread5_crit_edge
  %retval.0.i.i = phi ptr [ %27, %if.end.i.i ], [ %25, %do.end.i.__mmc_select_powerclass.exit.thread5_crit_edge ]
  %call62.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129, ptr noundef %retval.0.i.i) #15
  br label %do.end

sw.epilog.i:                                      ; preds = %if.then50.i, %if.else45.i.sw.epilog.i_crit_edge, %if.then36.i, %if.then29.i, %if.then20.i, %if.else15.i.sw.epilog.i_crit_edge, %if.then10.i, %if.then.i
  %pwrclass_val.0.shrunk.i = phi i8 [ %21, %if.then29.i ], [ %cond44.in.i, %if.then36.i ], [ %cond58.in.i, %if.then50.i ], [ 0, %if.else45.i.sw.epilog.i_crit_edge ], [ %14, %if.then.i ], [ %cond.in.i, %if.then10.i ], [ %17, %if.then20.i ], [ 0, %if.else15.i.sw.epilog.i_crit_edge ]
  %pwrclass_val.0.i = zext i8 %pwrclass_val.0.shrunk.i to i32
  %and.i = and i32 %ext_csd_bits.0, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and64.i = lshr i32 %pwrclass_val.0.i, 4
  %pwrclass_val.1.in.i = select i1 %tobool.not.i, i32 %pwrclass_val.0.i, i32 %and64.i
  %pwrclass_val.1.i = and i32 %pwrclass_val.1.in.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pwrclass_val.1.i)
  %cmp69.not.i = icmp eq i32 %pwrclass_val.1.i, 0
  br i1 %cmp69.not.i, label %sw.epilog.i.cleanup_crit_edge, label %__mmc_select_powerclass.exit

sw.epilog.i.cleanup_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

__mmc_select_powerclass.exit:                     ; preds = %sw.epilog.i
  %conv72.i = trunc i32 %pwrclass_val.1.i to i8
  %generic_cmd6_time.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 14
  %28 = ptrtoint ptr %generic_cmd6_time.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %generic_cmd6_time.i, align 4
  %call74.i = tail call i32 @mmc_switch(ptr noundef %card, i8 noundef zeroext 1, i8 noundef zeroext -69, i8 noundef zeroext %conv72.i, i32 noundef %29) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.i)
  %tobool15.not = icmp eq i32 %call74.i, 0
  br i1 %tobool15.not, label %__mmc_select_powerclass.exit.cleanup_crit_edge, label %__mmc_select_powerclass.exit.do.end_crit_edge

__mmc_select_powerclass.exit.do.end_crit_edge:    ; preds = %__mmc_select_powerclass.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

__mmc_select_powerclass.exit.cleanup_crit_edge:   ; preds = %__mmc_select_powerclass.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %__mmc_select_powerclass.exit.do.end_crit_edge, %__mmc_select_powerclass.exit.thread5
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 1, i32 3
  %30 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i1 = icmp eq ptr %31, null
  br i1 %tobool.not.i1, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 1
  %32 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i2 = phi ptr [ %33, %if.end.i ], [ %31, %do.end.dev_name.exit_crit_edge ]
  %shl = shl nuw i32 1, %conv
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, ptr noundef %retval.0.i2, i32 noundef %shl, i32 noundef %and) #15
  br label %cleanup

cleanup:                                          ; preds = %dev_name.exit, %__mmc_select_powerclass.exit.cleanup_crit_edge, %sw.epilog.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_cmdq_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_cid_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %raw_cid = getelementptr i8, ptr %dev, i32 980
  %0 = ptrtoint ptr %raw_cid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %raw_cid, align 4
  %arrayidx2 = getelementptr i8, ptr %dev, i32 984
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  %arrayidx4 = getelementptr i8, ptr %dev, i32 988
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4, align 4
  %arrayidx6 = getelementptr i8, ptr %dev, i32 992
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx6, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.43, i32 noundef %1, i32 noundef %3, i32 noundef %5, i32 noundef %7)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_csd_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %raw_csd = getelementptr i8, ptr %dev, i32 996
  %0 = ptrtoint ptr %raw_csd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %raw_csd, align 4
  %arrayidx2 = getelementptr i8, ptr %dev, i32 1000
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  %arrayidx4 = getelementptr i8, ptr %dev, i32 1004
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4, align 4
  %arrayidx6 = getelementptr i8, ptr %dev, i32 1008
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx6, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.43, i32 noundef %1, i32 noundef %3, i32 noundef %5, i32 noundef %7)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_date_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %month = getelementptr i8, ptr %dev, i32 1110
  %0 = ptrtoint ptr %month to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %month, align 2
  %conv = zext i8 %1 to i32
  %year = getelementptr i8, ptr %dev, i32 1106
  %2 = ptrtoint ptr %year to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %year, align 2
  %conv2 = zext i16 %3 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.46, i32 noundef %conv, i32 noundef %conv2)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_erase_size_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %erase_size = getelementptr i8, ptr %dev, i32 956
  %0 = ptrtoint ptr %erase_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %erase_size, align 4
  %shl = shl i32 %1, 9
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.48, i32 noundef %shl)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_preferred_erase_size_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pref_erase = getelementptr i8, ptr %dev, i32 964
  %0 = ptrtoint ptr %pref_erase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pref_erase, align 4
  %shl = shl i32 %1, 9
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.48, i32 noundef %shl)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_fwrev_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ext_csd = getelementptr i8, ptr %dev, i32 1160
  %0 = ptrtoint ptr %ext_csd to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ext_csd, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %1)
  %cmp = icmp ult i8 %1, 7
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %fwrev = getelementptr i8, ptr %dev, i32 1109
  %2 = ptrtoint ptr %fwrev to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fwrev, align 1
  %conv2 = zext i8 %3 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.51, i32 noundef %conv2)
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %fwrev4 = getelementptr i8, ptr %dev, i32 1280
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.52, i32 noundef 8, ptr noundef %fwrev4)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call5, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_ffu_capable_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ffu_capable = getelementptr i8, ptr %dev, i32 1273
  %0 = ptrtoint ptr %ffu_capable to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ffu_capable, align 1, !range !308
  %2 = zext i8 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.54, i32 noundef %2)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_hwrev_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hwrev = getelementptr i8, ptr %dev, i32 1108
  %0 = ptrtoint ptr %hwrev to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hwrev, align 4
  %conv = zext i8 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.51, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_manfid_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cid = getelementptr i8, ptr %dev, i32 1084
  %0 = ptrtoint ptr %cid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cid, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.57, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_name_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %prod_name = getelementptr i8, ptr %dev, i32 1088
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.59, ptr noundef %prod_name)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_oemid_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %oemid = getelementptr i8, ptr %dev, i32 1104
  %0 = ptrtoint ptr %oemid to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %oemid, align 4
  %conv = zext i16 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.61, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_prv_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %prv = getelementptr i8, ptr %dev, i32 1096
  %0 = ptrtoint ptr %prv to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prv, align 4
  %conv = zext i8 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.51, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_rev_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ext_csd = getelementptr i8, ptr %dev, i32 1160
  %0 = ptrtoint ptr %ext_csd to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ext_csd, align 8
  %conv = zext i8 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.51, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_pre_eol_info_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pre_eol_info = getelementptr i8, ptr %dev, i32 1320
  %0 = ptrtoint ptr %pre_eol_info to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pre_eol_info, align 8
  %conv = zext i8 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.65, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_life_time_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %device_life_time_est_typ_a = getelementptr i8, ptr %dev, i32 1321
  %0 = ptrtoint ptr %device_life_time_est_typ_a to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %device_life_time_est_typ_a, align 1
  %conv = zext i8 %1 to i32
  %device_life_time_est_typ_b = getelementptr i8, ptr %dev, i32 1322
  %2 = ptrtoint ptr %device_life_time_est_typ_b to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %device_life_time_est_typ_b, align 2
  %conv2 = zext i8 %3 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.67, i32 noundef %conv, i32 noundef %conv2)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_serial_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %serial = getelementptr i8, ptr %dev, i32 1100
  %0 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %serial, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.69, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_enhanced_area_offset_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %enhanced_area_offset = getelementptr i8, ptr %dev, i32 1232
  %0 = ptrtoint ptr %enhanced_area_offset to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %enhanced_area_offset, align 8
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.71, i64 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_enhanced_area_size_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %enhanced_area_size = getelementptr i8, ptr %dev, i32 1240
  %0 = ptrtoint ptr %enhanced_area_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %enhanced_area_size, align 8
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.48, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_raw_rpmb_size_mult_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %raw_rpmb_size_mult = getelementptr i8, ptr %dev, i32 1290
  %0 = ptrtoint ptr %raw_rpmb_size_mult to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %raw_rpmb_size_mult, align 2
  %conv = zext i8 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.74, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_enhanced_rpmb_supported_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %enhanced_rpmb_supported = getelementptr i8, ptr %dev, i32 1165
  %0 = ptrtoint ptr %enhanced_rpmb_supported to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enhanced_rpmb_supported, align 1, !range !308
  %2 = zext i8 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.74, i32 noundef %2)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_rel_sectors_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rel_sectors = getelementptr i8, ptr %dev, i32 1163
  %0 = ptrtoint ptr %rel_sectors to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rel_sectors, align 1
  %conv = zext i8 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.74, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_ocr_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ocr = getelementptr i8, ptr %dev, i32 928
  %0 = ptrtoint ptr %ocr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ocr, align 8
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.69, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_rca_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rca = getelementptr i8, ptr %dev, i32 932
  %0 = ptrtoint ptr %rca to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rca, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.61, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_dsr_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %dsr_imp = getelementptr i8, ptr %dev, i32 1152
  %2 = ptrtoint ptr %dsr_imp to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %dsr_imp, align 8
  %3 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %dsr_req = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 60
  %4 = ptrtoint ptr %dsr_req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dsr_req, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %dsr = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 61
  %6 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dsr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %.sink = phi i32 [ %7, %if.then ], [ 1028, %land.lhs.true.cleanup_crit_edge ], [ 1028, %entry.cleanup_crit_edge ]
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.51, i32 noundef %.sink)
  ret i32 %call3
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_cmdq_en_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdq_en = getelementptr i8, ptr %dev, i32 1274
  %0 = ptrtoint ptr %cmdq_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cmdq_en, align 2, !range !308
  %2 = zext i8 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.54, i32 noundef %2)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_can_ext_csd(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_get_ext_csd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mmc_decode_ext_csd(ptr noundef %card, ptr noundef readonly %ext_csd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %ext_csd, i32 194
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %ext_csd1 = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21
  %raw_ext_csd_structure = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 49
  %2 = ptrtoint ptr %raw_ext_csd_structure to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %raw_ext_csd_structure, align 1
  %csd = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 20
  %3 = ptrtoint ptr %csd to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %csd, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %4)
  %cmp = icmp eq i8 %4, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp6 = icmp ugt i8 %1, 2
  %or.cond = select i1 %cmp, i1 %cmp6, i1 false
  %5 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %card, align 8
  br i1 %or.cond, label %do.end, label %if.end13

do.end:                                           ; preds = %entry
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %6, i32 0, i32 1, i32 3
  %7 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i724 = phi ptr [ %10, %if.end.i ], [ %8, %do.end.dev_name.exit_crit_edge ]
  %conv11 = zext i8 %1 to i32
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef %retval.0.i724, i32 noundef %conv11) #15
  br label %out

if.end13:                                         ; preds = %entry
  %call15 = tail call ptr @mmc_of_find_child_device(ptr noundef %6, i32 noundef 0) #12
  %tobool.not = icmp eq ptr %call15, null
  br i1 %tobool.not, label %if.end13.if.end20_crit_edge, label %land.lhs.true

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

land.lhs.true:                                    ; preds = %if.end13
  %call16 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %call15, ptr noundef nonnull @.str.92) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.lhs.true.if.end20_crit_edge, label %if.then18

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call ptr @of_find_property(ptr noundef nonnull %call15, ptr noundef nonnull @.str.93, ptr noundef null) #12
  %tobool.i = icmp ne ptr %call.i, null
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %land.lhs.true.if.end20_crit_edge, %if.end13.if.end20_crit_edge
  %broken_hpi.0.off0 = phi i1 [ %tobool.i, %if.then18 ], [ false, %land.lhs.true.if.end20_crit_edge ], [ false, %if.end13.if.end20_crit_edge ]
  tail call void @of_node_put(ptr noundef %call15) #12
  %arrayidx21 = getelementptr i8, ptr %ext_csd, i32 192
  %11 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx21, align 1
  %13 = ptrtoint ptr %ext_csd1 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %ext_csd1, align 8
  tail call fastcc void @mmc_fixup_device(ptr noundef %card)
  %arrayidx23 = getelementptr i8, ptr %ext_csd, i32 212
  %14 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx23, align 1
  %raw_sectors = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 72
  %16 = ptrtoint ptr %raw_sectors to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %raw_sectors, align 4
  %arrayidx26 = getelementptr i8, ptr %ext_csd, i32 213
  %17 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx26, align 1
  %arrayidx29 = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 21, i32 72, i32 1
  %19 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %arrayidx29, align 1
  %arrayidx30 = getelementptr i8, ptr %ext_csd, i32 214
  %20 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx30, align 1
  %arrayidx33 = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 21, i32 72, i32 2
  %22 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %arrayidx33, align 2
  %arrayidx34 = getelementptr i8, ptr %ext_csd, i32 215
  %23 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx34, align 1
  %arrayidx37 = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 21, i32 72, i32 3
  %25 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %arrayidx37, align 1
  %26 = ptrtoint ptr %ext_csd1 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ext_csd1, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %27)
  %cmp41 = icmp ugt i8 %27, 1
  br i1 %cmp41, label %if.then43, label %if.end20.if.end65_crit_edge

if.end20.if.end65_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

if.then43:                                        ; preds = %if.end20
  %28 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx23, align 1
  %conv45 = zext i8 %29 to i32
  %30 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx26, align 1
  %conv47 = zext i8 %31 to i32
  %shl48 = shl nuw nsw i32 %conv47, 8
  %or = or i32 %shl48, %conv45
  %32 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx30, align 1
  %conv50 = zext i8 %33 to i32
  %shl51 = shl nuw nsw i32 %conv50, 16
  %or52 = or i32 %or, %shl51
  %34 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx34, align 1
  %conv54 = zext i8 %35 to i32
  %shl55 = shl nuw i32 %conv54, 24
  %or56 = or i32 %or52, %shl55
  %sectors = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 19
  %36 = ptrtoint ptr %sectors to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or56, ptr %sectors, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %or56)
  %cmp60 = icmp ugt i32 %or56, 4194304
  br i1 %cmp60, label %if.then62, label %if.then43.if.end65_crit_edge

if.then43.if.end65_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

if.then62:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #14
  %state = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 5
  %37 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %state, align 4
  %or63 = or i32 %38, 4
  store i32 %or63, ptr %state, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then62, %if.then43.if.end65_crit_edge, %if.end20.if.end65_crit_edge
  %arrayidx66 = getelementptr i8, ptr %ext_csd, i32 184
  %39 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx66, align 1
  %strobe_support = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 48
  %41 = ptrtoint ptr %strobe_support to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %strobe_support, align 4
  %arrayidx68 = getelementptr i8, ptr %ext_csd, i32 196
  %42 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx68, align 1
  %raw_card_type = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 50
  %44 = ptrtoint ptr %raw_card_type to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %raw_card_type, align 2
  %45 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %card, align 8
  %caps2.i = getelementptr inbounds %struct.mmc_host, ptr %46, i32 0, i32 16
  %47 = ptrtoint ptr %caps2.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %caps2.i, align 32
  %caps24.i = getelementptr inbounds %struct.mmc_host, ptr %46, i32 0, i32 17
  %49 = ptrtoint ptr %caps24.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %caps24.i, align 4
  %and.i = and i32 %48, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i725 = icmp eq i32 %and.i, 0
  %51 = and i8 %43, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool6.not.i = icmp eq i8 %51, 0
  %or.cond.i = select i1 %tobool.not.i725, i1 true, i1 %tobool6.not.i
  %not.or.cond.i = xor i1 %or.cond.i, true
  %avail_type.0.i = zext i1 %not.or.cond.i to i32
  %52 = and i8 %43, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool12.not.i = icmp eq i8 %52, 0
  %or.cond116.i = select i1 %tobool.not.i725, i1 true, i1 %tobool12.not.i
  %or14.i = or i32 %avail_type.0.i, 2
  %avail_type.1.i = select i1 %or.cond116.i, i32 %avail_type.0.i, i32 %or14.i
  %and16.i = and i32 %48, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  %53 = and i8 %43, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool21.not.i = icmp eq i8 %53, 0
  %or.cond117.i = select i1 %tobool17.not.i, i1 true, i1 %tobool21.not.i
  %or23.i = or i32 %avail_type.1.i, 4
  %avail_type.2.i = select i1 %or.cond117.i, i32 %avail_type.1.i, i32 %or23.i
  %and25.i = and i32 %48, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  %54 = and i8 %43, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool30.not.i = icmp eq i8 %54, 0
  %or.cond118.i = select i1 %tobool26.not.i, i1 true, i1 %tobool30.not.i
  %or32.i = or i32 %avail_type.2.i, 8
  %avail_type.3.i = select i1 %or.cond118.i, i32 %avail_type.2.i, i32 %or32.i
  %and34.i = and i32 %50, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool35.not.i = icmp eq i32 %and34.i, 0
  %55 = and i8 %43, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool39.not.i = icmp eq i8 %55, 0
  %or.cond119.i = select i1 %tobool35.not.i, i1 true, i1 %tobool39.not.i
  %or41.i = or i32 %avail_type.3.i, 16
  %avail_type.4.i = select i1 %or.cond119.i, i32 %avail_type.3.i, i32 %or41.i
  %and43.i = and i32 %50, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  %56 = and i8 %43, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool48.not.i = icmp eq i8 %56, 0
  %or.cond120.i = select i1 %tobool44.not.i, i1 true, i1 %tobool48.not.i
  %or50.i = or i32 %avail_type.4.i, 32
  %avail_type.5.i = select i1 %or.cond120.i, i32 %avail_type.4.i, i32 %or50.i
  %and52.i = and i32 %50, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52.i)
  %tobool53.not.i = icmp eq i32 %and52.i, 0
  %57 = and i8 %43, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool57.not.i = icmp eq i8 %57, 0
  %or.cond121.i = select i1 %tobool53.not.i, i1 true, i1 %tobool57.not.i
  %or59.i = or i32 %avail_type.5.i, 64
  %avail_type.6.i = select i1 %or.cond121.i, i32 %avail_type.5.i, i32 %or59.i
  %and61.i = and i32 %50, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61.i)
  %tobool62.not.i = icmp eq i32 %and61.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %43)
  %tobool66.not.i = icmp sgt i8 %43, -1
  %or.cond122.i = select i1 %tobool62.not.i, i1 true, i1 %tobool66.not.i
  %or68.i = or i32 %avail_type.6.i, 128
  %avail_type.7.i = select i1 %or.cond122.i, i32 %avail_type.6.i, i32 %or68.i
  %and70.i = and i32 %50, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.i)
  %tobool71.not.i = icmp eq i32 %and70.i, 0
  br i1 %tobool71.not.i, label %if.end65.mmc_select_card_type.exit_crit_edge, label %land.lhs.true72.i

if.end65.mmc_select_card_type.exit_crit_edge:     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %mmc_select_card_type.exit

land.lhs.true72.i:                                ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool75.not.i = icmp eq i8 %40, 0
  %and77.i = and i32 %avail_type.7.i, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77.i)
  %tobool78.not.i = icmp eq i32 %and77.i, 0
  %or.cond123.i = select i1 %tobool75.not.i, i1 true, i1 %tobool78.not.i
  %or80.i = or i32 %avail_type.7.i, 256
  %spec.select.i = select i1 %or.cond123.i, i32 %avail_type.7.i, i32 %or80.i
  br label %mmc_select_card_type.exit

mmc_select_card_type.exit:                        ; preds = %land.lhs.true72.i, %if.end65.mmc_select_card_type.exit_crit_edge
  %avail_type.8.i = phi i32 [ %avail_type.7.i, %if.end65.mmc_select_card_type.exit_crit_edge ], [ %spec.select.i, %land.lhs.true72.i ]
  %58 = select i1 %or.cond122.i, i1 %or.cond121.i, i1 false
  %59 = select i1 %58, i1 %or.cond120.i, i1 false
  %60 = select i1 %59, i1 %or.cond119.i, i1 false
  %hs200_max_dtr.3.i = select i1 %60, i32 0, i32 200000000
  %hs_max_dtr.0.i = select i1 %or.cond.i, i32 0, i32 26000000
  %61 = select i1 %or.cond118.i, i1 %or.cond117.i, i1 false
  %62 = select i1 %61, i1 %or.cond116.i, i1 false
  %hs_max_dtr.3.i = select i1 %62, i32 %hs_max_dtr.0.i, i32 52000000
  %hs_max_dtr83.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 17
  %63 = ptrtoint ptr %hs_max_dtr83.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %hs_max_dtr.3.i, ptr %hs_max_dtr83.i, align 8
  %hs200_max_dtr85.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 18
  %64 = ptrtoint ptr %hs200_max_dtr85.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %hs200_max_dtr.3.i, ptr %hs200_max_dtr85.i, align 4
  %mmc_avail_type.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 39
  %65 = ptrtoint ptr %mmc_avail_type.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %avail_type.8.i, ptr %mmc_avail_type.i, align 4
  %arrayidx70 = getelementptr i8, ptr %ext_csd, i32 217
  %66 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx70, align 1
  %raw_s_a_timeout = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 57
  %68 = ptrtoint ptr %raw_s_a_timeout to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %raw_s_a_timeout, align 1
  %arrayidx72 = getelementptr i8, ptr %ext_csd, i32 223
  %69 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx72, align 1
  %raw_erase_timeout_mult = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 59
  %71 = ptrtoint ptr %raw_erase_timeout_mult to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %raw_erase_timeout_mult, align 1
  %arrayidx74 = getelementptr i8, ptr %ext_csd, i32 224
  %72 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx74, align 1
  %raw_hc_erase_grp_size = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 60
  %74 = ptrtoint ptr %raw_hc_erase_grp_size to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %raw_hc_erase_grp_size, align 8
  %arrayidx76 = getelementptr i8, ptr %ext_csd, i32 226
  %75 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx76, align 1
  %raw_boot_mult = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 61
  %77 = ptrtoint ptr %raw_boot_mult to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %raw_boot_mult, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %27)
  %cmp81 = icmp ugt i8 %27, 2
  br i1 %cmp81, label %if.then83, label %mmc_select_card_type.exit.if.end130_crit_edge

mmc_select_card_type.exit.if.end130_crit_edge:    ; preds = %mmc_select_card_type.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end130

if.then83:                                        ; preds = %mmc_select_card_type.exit
  %78 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx70, align 1
  %arrayidx85 = getelementptr i8, ptr %ext_csd, i32 179
  %80 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx85, align 1
  %part_config = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 6
  %82 = ptrtoint ptr %part_config to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %part_config, align 2
  %arrayidx87 = getelementptr i8, ptr %ext_csd, i32 199
  %83 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx87, align 1
  %conv88 = zext i8 %84 to i32
  %mul = mul nuw nsw i32 %conv88, 10
  %part_time = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 12
  %85 = ptrtoint ptr %part_time to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %mul, ptr %part_time, align 4
  %86 = add i8 %79, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 23, i8 %86)
  %87 = icmp ult i8 %86, 23
  br i1 %87, label %if.then97, label %if.then83.if.end102_crit_edge

if.then83.if.end102_crit_edge:                    ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end102

if.then97:                                        ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #14
  %88 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx70, align 1
  %conv99 = zext i8 %89 to i32
  %shl100 = shl nuw i32 1, %conv99
  %sa_timeout = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 13
  %90 = ptrtoint ptr %sa_timeout to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %shl100, ptr %sa_timeout, align 8
  br label %if.end102

if.end102:                                        ; preds = %if.then97, %if.then83.if.end102_crit_edge
  %arrayidx103 = getelementptr i8, ptr %ext_csd, i32 175
  %91 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx103, align 1
  %erase_group_def = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 1
  %93 = ptrtoint ptr %erase_group_def to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %erase_group_def, align 1
  %94 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx72, align 1
  %conv106 = zext i8 %95 to i32
  %mul107 = mul nuw nsw i32 %conv106, 300
  %hc_erase_timeout = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 21
  %96 = ptrtoint ptr %hc_erase_timeout to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %mul107, ptr %hc_erase_timeout, align 8
  %97 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx74, align 1
  %conv110 = zext i8 %98 to i32
  %shl111 = shl nuw nsw i32 %conv110, 10
  %hc_erase_size = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 20
  %99 = ptrtoint ptr %hc_erase_size to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %shl111, ptr %hc_erase_size, align 4
  %arrayidx113 = getelementptr i8, ptr %ext_csd, i32 222
  %100 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx113, align 1
  %rel_sectors = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 3
  %102 = ptrtoint ptr %rel_sectors to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %101, ptr %rel_sectors, align 1
  %103 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx76, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool117.not = icmp eq i8 %104, 0
  br i1 %tobool117.not, label %if.end102.if.end130_crit_edge, label %land.lhs.true118

if.end102.if.end130_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end130

land.lhs.true118:                                 ; preds = %if.end102
  %105 = ptrtoint ptr %caps24.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %caps24.i, align 4
  %and.i727 = and i32 %106, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i727)
  %tobool121.not.not = icmp eq i32 %and.i727, 0
  br i1 %tobool121.not.not, label %for.cond.preheader, label %land.lhs.true118.if.end130_crit_edge

land.lhs.true118.if.end130_crit_edge:             ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end130

for.cond.preheader:                               ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_pc() #14
  %nr_parts.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 43
  %107 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx76, align 1
  %conv126 = zext i8 %108 to i32
  %shl127 = shl nuw nsw i32 %conv126, 17
  %109 = zext i32 %shl127 to i64
  %110 = ptrtoint ptr %nr_parts.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %nr_parts.i, align 8
  %arrayidx.i = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 42, i32 %111
  %112 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %112)
  store i64 %109, ptr %arrayidx.i, align 8
  %113 = load i32, ptr %nr_parts.i, align 8
  %part_cfg5.i = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 42, i32 %113, i32 1
  %114 = ptrtoint ptr %part_cfg5.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 1, ptr %part_cfg5.i, align 8
  %115 = load i32, ptr %nr_parts.i, align 8
  %name9.i = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 42, i32 %115, i32 2
  %call.i728 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name9.i, ptr noundef nonnull @.str.94, i32 noundef 0) #12
  %116 = ptrtoint ptr %nr_parts.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %nr_parts.i, align 8
  %force_ro.i = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 42, i32 %117, i32 3
  %118 = ptrtoint ptr %force_ro.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 1, ptr %force_ro.i, align 8
  %119 = load i32, ptr %nr_parts.i, align 8
  %area_type17.i = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 42, i32 %119, i32 4
  %120 = ptrtoint ptr %area_type17.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 2, ptr %area_type17.i, align 4
  %inc.i = add i32 %119, 1
  store i32 %inc.i, ptr %nr_parts.i, align 8
  %121 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx76, align 1
  %conv126.1 = zext i8 %122 to i32
  %shl127.1 = shl nuw nsw i32 %conv126.1, 17
  %123 = zext i32 %shl127.1 to i64
  %arrayidx.i.1 = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 42, i32 %inc.i
  %124 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_store8_noabort(i32 %124)
  store i64 %123, ptr %arrayidx.i.1, align 8
  %125 = load i32, ptr %nr_parts.i, align 8
  %part_cfg5.i.1 = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 42, i32 %125, i32 1
  %126 = ptrtoint ptr %part_cfg5.i.1 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 2, ptr %part_cfg5.i.1, align 8
  %127 = load i32, ptr %nr_parts.i, align 8
  %name9.i.1 = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 42, i32 %127, i32 2
  %call.i728.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name9.i.1, ptr noundef nonnull @.str.94, i32 noundef 1) #12
  %128 = ptrtoint ptr %nr_parts.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %nr_parts.i, align 8
  %force_ro.i.1 = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 42, i32 %129, i32 3
  %130 = ptrtoint ptr %force_ro.i.1 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 1, ptr %force_ro.i.1, align 8
  %131 = load i32, ptr %nr_parts.i, align 8
  %area_type17.i.1 = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 42, i32 %131, i32 4
  %132 = ptrtoint ptr %area_type17.i.1 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 2, ptr %area_type17.i.1, align 4
  %inc.i.1 = add i32 %131, 1
  store i32 %inc.i.1, ptr %nr_parts.i, align 8
  br label %if.end130

if.end130:                                        ; preds = %for.cond.preheader, %land.lhs.true118.if.end130_crit_edge, %if.end102.if.end130_crit_edge, %mmc_select_card_type.exit.if.end130_crit_edge
  %arrayidx131 = getelementptr i8, ptr %ext_csd, i32 221
  %133 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx131, align 1
  %raw_hc_erase_gap_size = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 58
  %135 = ptrtoint ptr %raw_hc_erase_gap_size to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %134, ptr %raw_hc_erase_gap_size, align 2
  %arrayidx133 = getelementptr i8, ptr %ext_csd, i32 229
  %136 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx133, align 1
  %raw_sec_trim_mult = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 62
  %138 = ptrtoint ptr %raw_sec_trim_mult to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %137, ptr %raw_sec_trim_mult, align 2
  %arrayidx135 = getelementptr i8, ptr %ext_csd, i32 230
  %139 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %arrayidx135, align 1
  %raw_sec_erase_mult = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 63
  %141 = ptrtoint ptr %raw_sec_erase_mult to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %140, ptr %raw_sec_erase_mult, align 1
  %arrayidx137 = getelementptr i8, ptr %ext_csd, i32 231
  %142 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %arrayidx137, align 1
  %raw_sec_feature_support = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 64
  %144 = ptrtoint ptr %raw_sec_feature_support to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %143, ptr %raw_sec_feature_support, align 4
  %arrayidx139 = getelementptr i8, ptr %ext_csd, i32 232
  %145 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %arrayidx139, align 1
  %raw_trim_mult = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 65
  %147 = ptrtoint ptr %raw_trim_mult to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %146, ptr %raw_trim_mult, align 1
  %arrayidx141 = getelementptr i8, ptr %ext_csd, i32 160
  %148 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %arrayidx141, align 1
  %raw_partition_support = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 45
  %150 = ptrtoint ptr %raw_partition_support to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %149, ptr %raw_partition_support, align 1
  %arrayidx143 = getelementptr i8, ptr %ext_csd, i32 197
  %151 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %arrayidx143, align 1
  %raw_driver_strength = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 51
  %153 = ptrtoint ptr %raw_driver_strength to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %152, ptr %raw_driver_strength, align 1
  %154 = ptrtoint ptr %ext_csd1 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %ext_csd1, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %155)
  %cmp148 = icmp ugt i8 %155, 3
  br i1 %cmp148, label %if.then150, label %if.end130.if.end320_crit_edge

if.end130.if.end320_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end320

if.then150:                                       ; preds = %if.end130
  %arrayidx151 = getelementptr i8, ptr %ext_csd, i32 155
  %156 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %arrayidx151, align 1
  %158 = and i8 %157, 1
  %159 = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 25
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %158, ptr %159, align 8
  %enhanced_area_offset.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 26
  %161 = ptrtoint ptr %enhanced_area_offset.i to i32
  call void @__asan_store8_noabort(i32 %161)
  store i64 -22, ptr %enhanced_area_offset.i, align 8
  %enhanced_area_size.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 27
  %162 = ptrtoint ptr %enhanced_area_size.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 -22, ptr %enhanced_area_size.i, align 8
  %163 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %arrayidx141, align 1
  %165 = and i8 %164, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %165)
  %tobool.not.i730 = icmp eq i8 %165, 0
  br i1 %tobool.not.i730, label %if.then150.mmc_manage_enhanced_area.exit_crit_edge, label %land.lhs.true.i

if.then150.mmc_manage_enhanced_area.exit_crit_edge: ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #14
  br label %mmc_manage_enhanced_area.exit

land.lhs.true.i:                                  ; preds = %if.then150
  %arrayidx3.i = getelementptr i8, ptr %ext_csd, i32 156
  %166 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %arrayidx3.i, align 1
  %168 = and i8 %167, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %168)
  %tobool6.not.i731 = icmp eq i8 %168, 0
  br i1 %tobool6.not.i731, label %land.lhs.true.i.mmc_manage_enhanced_area.exit_crit_edge, label %if.then.i

land.lhs.true.i.mmc_manage_enhanced_area.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mmc_manage_enhanced_area.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %169 = ptrtoint ptr %159 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %159, align 8, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %170)
  %tobool8.not.i = icmp eq i8 %170, 0
  br i1 %tobool8.not.i, label %do.end.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.then.i
  %171 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %arrayidx74, align 1
  %173 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %arrayidx131, align 1
  %arrayidx12.i = getelementptr i8, ptr %ext_csd, i32 139
  %175 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %arrayidx12.i, align 1
  %conv13.i = zext i8 %176 to i64
  %shl.i = shl nuw nsw i64 %conv13.i, 24
  %arrayidx14.i = getelementptr i8, ptr %ext_csd, i32 138
  %177 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %arrayidx14.i, align 1
  %conv15.i = zext i8 %178 to i64
  %shl16.i = shl nuw nsw i64 %conv15.i, 16
  %add.i = or i64 %shl16.i, %shl.i
  %arrayidx17.i = getelementptr i8, ptr %ext_csd, i32 137
  %179 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %arrayidx17.i, align 1
  %conv18.i = zext i8 %180 to i64
  %shl19.i = shl nuw nsw i64 %conv18.i, 8
  %add20.i = or i64 %add.i, %shl19.i
  %arrayidx21.i = getelementptr i8, ptr %ext_csd, i32 136
  %181 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %arrayidx21.i, align 1
  %conv22.i = zext i8 %182 to i64
  %add23.i = or i64 %add20.i, %conv22.i
  %183 = ptrtoint ptr %enhanced_area_offset.i to i32
  call void @__asan_store8_noabort(i32 %183)
  store i64 %add23.i, ptr %enhanced_area_offset.i, align 8
  %state.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 5
  %184 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %state.i, align 4
  %and26.i = and i32 %185, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %if.then9.i.if.end.i732_crit_edge, label %if.then28.i

if.then9.i.if.end.i732_crit_edge:                 ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i732

if.then28.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #14
  %shl31.i = shl nuw nsw i64 %add23.i, 9
  %186 = ptrtoint ptr %enhanced_area_offset.i to i32
  call void @__asan_store8_noabort(i32 %186)
  store i64 %shl31.i, ptr %enhanced_area_offset.i, align 8
  br label %if.end.i732

if.end.i732:                                      ; preds = %if.then28.i, %if.then9.i.if.end.i732_crit_edge
  %arrayidx32.i = getelementptr i8, ptr %ext_csd, i32 142
  %187 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %arrayidx32.i, align 1
  %conv33.i = zext i8 %188 to i32
  %shl34.i = shl nuw nsw i32 %conv33.i, 16
  %arrayidx35.i = getelementptr i8, ptr %ext_csd, i32 141
  %189 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %arrayidx35.i, align 1
  %conv36.i = zext i8 %190 to i32
  %shl37.i = shl nuw nsw i32 %conv36.i, 8
  %add38.i = or i32 %shl37.i, %shl34.i
  %arrayidx39.i = getelementptr i8, ptr %ext_csd, i32 140
  %191 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %arrayidx39.i, align 1
  %conv40.i = zext i8 %192 to i32
  %add41.i = or i32 %add38.i, %conv40.i
  %conv44.i = zext i8 %172 to i32
  %conv45.i = zext i8 %174 to i32
  %mul.i = shl nuw nsw i32 %conv44.i, 9
  %mul48.i = mul nuw nsw i32 %mul.i, %conv45.i
  %shl51.i = mul i32 %mul48.i, %add41.i
  %193 = ptrtoint ptr %enhanced_area_size.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %shl51.i, ptr %enhanced_area_size.i, align 8
  br label %mmc_manage_enhanced_area.exit

do.end.i:                                         ; preds = %if.then.i
  %194 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %card, align 8
  %init_name.i.i = getelementptr inbounds %struct.mmc_host, ptr %195, i32 0, i32 1, i32 3
  %196 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %197, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.dev_name.exit.i_crit_edge

do.end.i.dev_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev.i = getelementptr inbounds %struct.mmc_host, ptr %195, i32 0, i32 1
  %198 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %class_dev.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %do.end.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %199, %if.end.i.i ], [ %197, %do.end.i.dev_name.exit.i_crit_edge ]
  %call52.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef %retval.0.i.i) #15
  br label %mmc_manage_enhanced_area.exit

mmc_manage_enhanced_area.exit:                    ; preds = %dev_name.exit.i, %if.end.i732, %land.lhs.true.i.mmc_manage_enhanced_area.exit_crit_edge, %if.then150.mmc_manage_enhanced_area.exit_crit_edge
  %200 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %arrayidx141, align 1
  %202 = and i8 %201, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %202)
  %tobool.not.i734 = icmp eq i8 %202, 0
  br i1 %tobool.not.i734, label %mmc_manage_enhanced_area.exit.if.end193_crit_edge, label %if.then.i739

mmc_manage_enhanced_area.exit.if.end193_crit_edge: ; preds = %mmc_manage_enhanced_area.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end193

if.then.i739:                                     ; preds = %mmc_manage_enhanced_area.exit
  %203 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %arrayidx74, align 1
  %205 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %arrayidx131, align 1
  %conv44.i736 = zext i8 %204 to i32
  %conv45.i737 = zext i8 %206 to i32
  %mul46.i = mul nuw nsw i32 %conv45.i737, %conv44.i736
  %207 = zext i32 %mul46.i to i64
  %mul48.i738 = shl nuw nsw i64 %207, 19
  %nr_parts.i.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 43
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then.i739
  %idx.072.i = phi i32 [ 0, %if.then.i739 ], [ %inc.i752, %for.inc.i.for.body.i_crit_edge ]
  %mul.i740 = mul nuw nsw i32 %idx.072.i, 3
  %add.i741 = add nuw nsw i32 %mul.i740, 143
  %arrayidx4.i = getelementptr i8, ptr %ext_csd, i32 %add.i741
  %208 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %arrayidx4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %209)
  %tobool5.not.i = icmp eq i8 %209, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i742, label %for.body.i.if.end.i743_crit_edge

for.body.i.if.end.i743_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i743

land.lhs.true.i742:                               ; preds = %for.body.i
  %add8.i = add nuw nsw i32 %mul.i740, 144
  %arrayidx9.i = getelementptr i8, ptr %ext_csd, i32 %add8.i
  %210 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %arrayidx9.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %211)
  %tobool10.not.i = icmp eq i8 %211, 0
  br i1 %tobool10.not.i, label %land.lhs.true11.i, label %land.lhs.true.i742.if.end.i743_crit_edge

land.lhs.true.i742.if.end.i743_crit_edge:         ; preds = %land.lhs.true.i742
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i743

land.lhs.true11.i:                                ; preds = %land.lhs.true.i742
  %add14.i = add nuw nsw i32 %mul.i740, 145
  %arrayidx15.i = getelementptr i8, ptr %ext_csd, i32 %add14.i
  %212 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %arrayidx15.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %213)
  %tobool16.not.i = icmp eq i8 %213, 0
  br i1 %tobool16.not.i, label %land.lhs.true11.i.for.inc.i_crit_edge, label %land.lhs.true11.i.if.end.i743_crit_edge

land.lhs.true11.i.if.end.i743_crit_edge:          ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i743

land.lhs.true11.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end.i743:                                      ; preds = %land.lhs.true11.i.if.end.i743_crit_edge, %land.lhs.true.i742.if.end.i743_crit_edge, %for.body.i.if.end.i743_crit_edge
  %214 = ptrtoint ptr %159 to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %159, align 8, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %215)
  %cmp21.i = icmp eq i8 %215, 0
  br i1 %cmp21.i, label %do.end.i746, label %if.end25.i

do.end.i746:                                      ; preds = %if.end.i743
  %216 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %card, align 8
  %init_name.i.i744 = getelementptr inbounds %struct.mmc_host, ptr %217, i32 0, i32 1, i32 3
  %218 = ptrtoint ptr %init_name.i.i744 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %init_name.i.i744, align 8
  %tobool.not.i.i745 = icmp eq ptr %219, null
  br i1 %tobool.not.i.i745, label %if.end.i.i748, label %do.end.i746.dev_name.exit.i750_crit_edge

do.end.i746.dev_name.exit.i750_crit_edge:         ; preds = %do.end.i746
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i750

if.end.i.i748:                                    ; preds = %do.end.i746
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev.i747 = getelementptr inbounds %struct.mmc_host, ptr %217, i32 0, i32 1
  %220 = ptrtoint ptr %class_dev.i747 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %class_dev.i747, align 4
  br label %dev_name.exit.i750

dev_name.exit.i750:                               ; preds = %if.end.i.i748, %do.end.i746.dev_name.exit.i750_crit_edge
  %retval.0.i.i749 = phi ptr [ %221, %if.end.i.i748 ], [ %219, %do.end.i746.dev_name.exit.i750_crit_edge ]
  %call24.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef %retval.0.i.i749) #15
  br label %if.end193

if.end25.i:                                       ; preds = %if.end.i743
  call void @__sanitizer_cov_trace_pc() #14
  %add28.i = add nuw nsw i32 %mul.i740, 145
  %arrayidx29.i = getelementptr i8, ptr %ext_csd, i32 %add28.i
  %222 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %arrayidx29.i, align 1
  %conv30.i = zext i8 %223 to i32
  %shl.i751 = shl nuw nsw i32 %conv30.i, 16
  %add33.i = add nuw nsw i32 %mul.i740, 144
  %arrayidx34.i = getelementptr i8, ptr %ext_csd, i32 %add33.i
  %224 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %arrayidx34.i, align 1
  %conv35.i = zext i8 %225 to i32
  %shl36.i = shl nuw nsw i32 %conv35.i, 8
  %conv41.i = zext i8 %209 to i32
  %add37.i = or i32 %shl.i751, %conv41.i
  %add42.i = or i32 %add37.i, %shl36.i
  %226 = zext i32 %add42.i to i64
  %shl49.i = mul nuw nsw i64 %mul48.i738, %226
  %add50.i = add nuw nsw i32 %idx.072.i, 4
  %227 = ptrtoint ptr %nr_parts.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %nr_parts.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 42, i32 %228
  %229 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store8_noabort(i32 %229)
  store i64 %shl49.i, ptr %arrayidx.i.i, align 8
  %230 = load i32, ptr %nr_parts.i.i, align 8
  %part_cfg5.i.i = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 42, i32 %230, i32 1
  %231 = ptrtoint ptr %part_cfg5.i.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %add50.i, ptr %part_cfg5.i.i, align 8
  %232 = load i32, ptr %nr_parts.i.i, align 8
  %name9.i.i = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 42, i32 %232, i32 2
  %call.i.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name9.i.i, ptr noundef nonnull @.str.106, i32 noundef %idx.072.i) #12
  %233 = ptrtoint ptr %nr_parts.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %nr_parts.i.i, align 8
  %force_ro.i.i = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 42, i32 %234, i32 3
  %235 = ptrtoint ptr %force_ro.i.i to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 0, ptr %force_ro.i.i, align 8
  %236 = load i32, ptr %nr_parts.i.i, align 8
  %area_type17.i.i = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 42, i32 %236, i32 4
  %237 = ptrtoint ptr %area_type17.i.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 4, ptr %area_type17.i.i, align 4
  %inc.i.i = add i32 %236, 1
  store i32 %inc.i.i, ptr %nr_parts.i.i, align 8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end25.i, %land.lhs.true11.i.for.inc.i_crit_edge
  %inc.i752 = add nuw nsw i32 %idx.072.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i752, 4
  br i1 %exitcond.not.i, label %for.inc.i.if.end193_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.if.end193_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end193

if.end193:                                        ; preds = %for.inc.i.if.end193_crit_edge, %dev_name.exit.i750, %mmc_manage_enhanced_area.exit.if.end193_crit_edge
  %238 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %arrayidx133, align 1
  %conv160 = zext i8 %239 to i32
  %sec_trim_mult = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 22
  %240 = ptrtoint ptr %sec_trim_mult to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 %conv160, ptr %sec_trim_mult, align 4
  %241 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %arrayidx135, align 1
  %conv163 = zext i8 %242 to i32
  %sec_erase_mult = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 23
  %243 = ptrtoint ptr %sec_erase_mult to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 %conv163, ptr %sec_erase_mult, align 8
  %244 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %arrayidx137, align 1
  %sec_feature_support = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 2
  %246 = ptrtoint ptr %sec_feature_support to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 %245, ptr %sec_feature_support, align 2
  %247 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %arrayidx139, align 1
  %conv168 = zext i8 %248 to i32
  %mul169 = mul nuw nsw i32 %conv168, 300
  %trim_timeout = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 24
  %249 = ptrtoint ptr %trim_timeout to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %mul169, ptr %trim_timeout, align 4
  %arrayidx171 = getelementptr i8, ptr %ext_csd, i32 173
  %250 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %arrayidx171, align 1
  %conv172 = zext i8 %251 to i32
  %boot_ro_lock = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 37
  %252 = ptrtoint ptr %boot_ro_lock to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 %conv172, ptr %boot_ro_lock, align 4
  %boot_ro_lockable = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 38
  %253 = ptrtoint ptr %boot_ro_lockable to i32
  call void @__asan_store1_noabort(i32 %253)
  store i8 1, ptr %boot_ro_lockable, align 8
  %arrayidx175 = getelementptr i8, ptr %ext_csd, i32 200
  %254 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %arrayidx175, align 1
  %raw_pwr_cl_52_195 = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 53
  %256 = ptrtoint ptr %raw_pwr_cl_52_195 to i32
  call void @__asan_store1_noabort(i32 %256)
  store i8 %255, ptr %raw_pwr_cl_52_195, align 1
  %arrayidx177 = getelementptr i8, ptr %ext_csd, i32 201
  %257 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_load1_noabort(i32 %257)
  %258 = load i8, ptr %arrayidx177, align 1
  %raw_pwr_cl_26_195 = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 54
  %259 = ptrtoint ptr %raw_pwr_cl_26_195 to i32
  call void @__asan_store1_noabort(i32 %259)
  store i8 %258, ptr %raw_pwr_cl_26_195, align 2
  %arrayidx179 = getelementptr i8, ptr %ext_csd, i32 202
  %260 = ptrtoint ptr %arrayidx179 to i32
  call void @__asan_load1_noabort(i32 %260)
  %261 = load i8, ptr %arrayidx179, align 1
  %raw_pwr_cl_52_360 = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 55
  %262 = ptrtoint ptr %raw_pwr_cl_52_360 to i32
  call void @__asan_store1_noabort(i32 %262)
  store i8 %261, ptr %raw_pwr_cl_52_360, align 1
  %arrayidx181 = getelementptr i8, ptr %ext_csd, i32 203
  %263 = ptrtoint ptr %arrayidx181 to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %arrayidx181, align 1
  %raw_pwr_cl_26_360 = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 56
  %265 = ptrtoint ptr %raw_pwr_cl_26_360 to i32
  call void @__asan_store1_noabort(i32 %265)
  store i8 %264, ptr %raw_pwr_cl_26_360, align 4
  %arrayidx183 = getelementptr i8, ptr %ext_csd, i32 236
  %266 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %arrayidx183, align 1
  %raw_pwr_cl_200_195 = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 66
  %268 = ptrtoint ptr %raw_pwr_cl_200_195 to i32
  call void @__asan_store1_noabort(i32 %268)
  store i8 %267, ptr %raw_pwr_cl_200_195, align 2
  %arrayidx185 = getelementptr i8, ptr %ext_csd, i32 237
  %269 = ptrtoint ptr %arrayidx185 to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %arrayidx185, align 1
  %raw_pwr_cl_200_360 = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 67
  %271 = ptrtoint ptr %raw_pwr_cl_200_360 to i32
  call void @__asan_store1_noabort(i32 %271)
  store i8 %270, ptr %raw_pwr_cl_200_360, align 1
  %arrayidx187 = getelementptr i8, ptr %ext_csd, i32 238
  %272 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %arrayidx187, align 1
  %raw_pwr_cl_ddr_52_195 = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 68
  %274 = ptrtoint ptr %raw_pwr_cl_ddr_52_195 to i32
  call void @__asan_store1_noabort(i32 %274)
  store i8 %273, ptr %raw_pwr_cl_ddr_52_195, align 8
  %arrayidx189 = getelementptr i8, ptr %ext_csd, i32 239
  %275 = ptrtoint ptr %arrayidx189 to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %arrayidx189, align 1
  %raw_pwr_cl_ddr_52_360 = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 69
  %277 = ptrtoint ptr %raw_pwr_cl_ddr_52_360 to i32
  call void @__asan_store1_noabort(i32 %277)
  store i8 %276, ptr %raw_pwr_cl_ddr_52_360, align 1
  %arrayidx191 = getelementptr i8, ptr %ext_csd, i32 253
  %278 = ptrtoint ptr %arrayidx191 to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %arrayidx191, align 1
  %raw_pwr_cl_ddr_200_360 = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 70
  %280 = ptrtoint ptr %raw_pwr_cl_ddr_200_360 to i32
  call void @__asan_store1_noabort(i32 %280)
  store i8 %279, ptr %raw_pwr_cl_ddr_200_360, align 2
  %281 = ptrtoint ptr %ext_csd1 to i32
  call void @__asan_load1_noabort(i32 %281)
  %.pr = load i8, ptr %ext_csd1, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %.pr)
  %cmp197 = icmp ugt i8 %.pr, 4
  br i1 %cmp197, label %if.then199, label %if.end193.if.end320_crit_edge

if.end193.if.end320_crit_edge:                    ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end320

if.then199:                                       ; preds = %if.end193
  %year = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 19, i32 5
  %282 = ptrtoint ptr %year to i32
  call void @__asan_load2_noabort(i32 %282)
  %283 = load i16, ptr %year, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2010, i16 %283)
  %cmp201 = icmp ult i16 %283, 2010
  br i1 %cmp201, label %if.then203, label %if.then199.if.end209_crit_edge

if.then199.if.end209_crit_edge:                   ; preds = %if.then199
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end209

if.then203:                                       ; preds = %if.then199
  call void @__sanitizer_cov_trace_pc() #14
  %add207 = add nuw nsw i16 %283, 16
  %284 = ptrtoint ptr %year to i32
  call void @__asan_store2_noabort(i32 %284)
  store i16 %add207, ptr %year, align 2
  br label %if.end209

if.end209:                                        ; preds = %if.then203, %if.then199.if.end209_crit_edge
  %arrayidx210 = getelementptr i8, ptr %ext_csd, i32 502
  %285 = ptrtoint ptr %arrayidx210 to i32
  call void @__asan_load1_noabort(i32 %285)
  %286 = load i8, ptr %arrayidx210, align 1
  %287 = and i8 %286, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %287)
  %tobool213.not = icmp eq i8 %287, 0
  br i1 %tobool213.not, label %if.end209.if.end273_crit_edge, label %if.then214

if.end209.if.end273_crit_edge:                    ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end273

if.then214:                                       ; preds = %if.end209
  %bkops = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 32
  %288 = ptrtoint ptr %bkops to i32
  call void @__asan_store1_noabort(i32 %288)
  store i8 1, ptr %bkops, align 8
  %arrayidx216 = getelementptr i8, ptr %ext_csd, i32 163
  %289 = ptrtoint ptr %arrayidx216 to i32
  call void @__asan_load1_noabort(i32 %289)
  %290 = load i8, ptr %arrayidx216, align 1
  %291 = and i8 %290, 1
  %man_bkops_en = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 33
  %292 = ptrtoint ptr %man_bkops_en to i32
  call void @__asan_store1_noabort(i32 %292)
  store i8 %291, ptr %man_bkops_en, align 1
  %arrayidx222 = getelementptr i8, ptr %ext_csd, i32 246
  %293 = ptrtoint ptr %arrayidx222 to i32
  call void @__asan_load1_noabort(i32 %293)
  %294 = load i8, ptr %arrayidx222, align 1
  %raw_bkops_status = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 71
  %295 = ptrtoint ptr %raw_bkops_status to i32
  call void @__asan_store1_noabort(i32 %295)
  store i8 %294, ptr %raw_bkops_status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %291)
  %tobool226.not = icmp eq i8 %291, 0
  br i1 %tobool226.not, label %if.then214.if.end242_crit_edge, label %do.body228

if.then214.if.end242_crit_edge:                   ; preds = %if.then214
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end242

do.body228:                                       ; preds = %if.then214
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_decode_ext_csd.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_decode_ext_csd, %if.then235)) #12
          to label %if.end242 [label %if.then235], !srcloc !309

if.then235:                                       ; preds = %do.body228
  %296 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %card, align 8
  %init_name.i753 = getelementptr inbounds %struct.mmc_host, ptr %297, i32 0, i32 1, i32 3
  %298 = ptrtoint ptr %init_name.i753 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %init_name.i753, align 8
  %tobool.not.i754 = icmp eq ptr %299, null
  br i1 %tobool.not.i754, label %if.end.i755, label %if.then235.dev_name.exit757_crit_edge

if.then235.dev_name.exit757_crit_edge:            ; preds = %if.then235
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit757

if.end.i755:                                      ; preds = %if.then235
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev237 = getelementptr inbounds %struct.mmc_host, ptr %297, i32 0, i32 1
  %300 = ptrtoint ptr %class_dev237 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %class_dev237, align 4
  br label %dev_name.exit757

dev_name.exit757:                                 ; preds = %if.end.i755, %if.then235.dev_name.exit757_crit_edge
  %retval.0.i756 = phi ptr [ %301, %if.end.i755 ], [ %299, %if.then235.dev_name.exit757_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mmc_decode_ext_csd.__UNIQUE_ID_ddebug269, ptr noundef nonnull @.str.95, ptr noundef %retval.0.i756) #12
  br label %if.end242

if.end242:                                        ; preds = %dev_name.exit757, %do.body228, %if.then214.if.end242_crit_edge
  %302 = ptrtoint ptr %arrayidx216 to i32
  call void @__asan_load1_noabort(i32 %302)
  %303 = load i8, ptr %arrayidx216, align 1
  %304 = and i8 %303, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %304)
  %tobool246.not = icmp eq i8 %304, 0
  %auto_bkops_en = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 34
  %.lobit716 = lshr exact i8 %304, 1
  %305 = ptrtoint ptr %auto_bkops_en to i32
  call void @__asan_store1_noabort(i32 %305)
  store i8 %.lobit716, ptr %auto_bkops_en, align 2
  br i1 %tobool246.not, label %if.end242.if.end273_crit_edge, label %do.body253

if.end242.if.end273_crit_edge:                    ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end273

do.body253:                                       ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_decode_ext_csd.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_decode_ext_csd, %if.then265)) #12
          to label %if.end273 [label %if.then265], !srcloc !309

if.then265:                                       ; preds = %do.body253
  %306 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %card, align 8
  %init_name.i758 = getelementptr inbounds %struct.mmc_host, ptr %307, i32 0, i32 1, i32 3
  %308 = ptrtoint ptr %init_name.i758 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %init_name.i758, align 8
  %tobool.not.i759 = icmp eq ptr %309, null
  br i1 %tobool.not.i759, label %if.end.i760, label %if.then265.dev_name.exit762_crit_edge

if.then265.dev_name.exit762_crit_edge:            ; preds = %if.then265
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit762

if.end.i760:                                      ; preds = %if.then265
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev267 = getelementptr inbounds %struct.mmc_host, ptr %307, i32 0, i32 1
  %310 = ptrtoint ptr %class_dev267 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %class_dev267, align 4
  br label %dev_name.exit762

dev_name.exit762:                                 ; preds = %if.end.i760, %if.then265.dev_name.exit762_crit_edge
  %retval.0.i761 = phi ptr [ %311, %if.end.i760 ], [ %309, %if.then265.dev_name.exit762_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mmc_decode_ext_csd.__UNIQUE_ID_ddebug270, ptr noundef nonnull @.str.96, ptr noundef %retval.0.i761) #12
  br label %if.end273

if.end273:                                        ; preds = %dev_name.exit762, %do.body253, %if.end242.if.end273_crit_edge, %if.end209.if.end273_crit_edge
  %quirks.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 6
  %312 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %quirks.i, align 8
  %and.i763 = and i32 %313, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i763)
  %tobool275.not = icmp ne i32 %and.i763, 0
  %brmerge = select i1 %tobool275.not, i1 true, i1 %broken_hpi.0.off0
  br i1 %brmerge, label %if.end273.if.end300_crit_edge, label %land.lhs.true278

if.end273.if.end300_crit_edge:                    ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end300

land.lhs.true278:                                 ; preds = %if.end273
  %arrayidx279 = getelementptr i8, ptr %ext_csd, i32 503
  %314 = ptrtoint ptr %arrayidx279 to i32
  call void @__asan_load1_noabort(i32 %314)
  %315 = load i8, ptr %arrayidx279, align 1
  %316 = and i8 %315, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %316)
  %tobool282.not = icmp eq i8 %316, 0
  br i1 %tobool282.not, label %land.lhs.true278.if.end300_crit_edge, label %if.then283

land.lhs.true278.if.end300_crit_edge:             ; preds = %land.lhs.true278
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end300

if.then283:                                       ; preds = %land.lhs.true278
  call void @__sanitizer_cov_trace_pc() #14
  %hpi = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 30
  %317 = ptrtoint ptr %hpi to i32
  call void @__asan_store1_noabort(i32 %317)
  store i8 1, ptr %hpi, align 1
  %318 = ptrtoint ptr %arrayidx279 to i32
  call void @__asan_load1_noabort(i32 %318)
  %319 = load i8, ptr %arrayidx279, align 1
  %320 = and i8 %319, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %320)
  %tobool288.not = icmp eq i8 %320, 0
  %spec.select789 = select i1 %tobool288.not, i32 13, i32 12
  %321 = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 31
  %322 = ptrtoint ptr %321 to i32
  call void @__asan_store4_noabort(i32 %322)
  store i32 %spec.select789, ptr %321, align 4
  %arrayidx295 = getelementptr i8, ptr %ext_csd, i32 198
  %323 = ptrtoint ptr %arrayidx295 to i32
  call void @__asan_load1_noabort(i32 %323)
  %324 = load i8, ptr %arrayidx295, align 1
  %mul297 = mul i8 %324, 10
  %out_of_int_time = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 52
  %325 = ptrtoint ptr %out_of_int_time to i32
  call void @__asan_store1_noabort(i32 %325)
  store i8 %mul297, ptr %out_of_int_time, align 8
  br label %if.end300

if.end300:                                        ; preds = %if.then283, %land.lhs.true278.if.end300_crit_edge, %if.end273.if.end300_crit_edge
  %arrayidx301 = getelementptr i8, ptr %ext_csd, i32 166
  %326 = ptrtoint ptr %arrayidx301 to i32
  call void @__asan_load1_noabort(i32 %326)
  %327 = load i8, ptr %arrayidx301, align 1
  %rel_param = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 4
  %328 = ptrtoint ptr %rel_param to i32
  call void @__asan_store1_noabort(i32 %328)
  store i8 %327, ptr %rel_param, align 4
  %arrayidx303 = getelementptr i8, ptr %ext_csd, i32 162
  %329 = ptrtoint ptr %arrayidx303 to i32
  call void @__asan_load1_noabort(i32 %329)
  %330 = load i8, ptr %arrayidx303, align 1
  %rst_n_function = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 8
  %331 = ptrtoint ptr %rst_n_function to i32
  call void @__asan_store1_noabort(i32 %331)
  store i8 %330, ptr %rst_n_function, align 8
  %arrayidx305 = getelementptr i8, ptr %ext_csd, i32 168
  %332 = ptrtoint ptr %arrayidx305 to i32
  call void @__asan_load1_noabort(i32 %332)
  %333 = load i8, ptr %arrayidx305, align 1
  %raw_rpmb_size_mult = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 46
  %334 = ptrtoint ptr %raw_rpmb_size_mult to i32
  call void @__asan_store1_noabort(i32 %334)
  store i8 %333, ptr %raw_rpmb_size_mult, align 2
  %335 = load i8, ptr %arrayidx305, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %335)
  %tobool309.not = icmp eq i8 %335, 0
  br i1 %tobool309.not, label %if.end300.if.end320_crit_edge, label %land.lhs.true310

if.end300.if.end320_crit_edge:                    ; preds = %if.end300
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end320

land.lhs.true310:                                 ; preds = %if.end300
  %336 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %card, align 8
  %caps.i = getelementptr inbounds %struct.mmc_host, ptr %337, i32 0, i32 16
  %338 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %caps.i, align 32
  %and.i764 = and i32 %339, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i764)
  %tobool313.not = icmp eq i32 %and.i764, 0
  br i1 %tobool313.not, label %land.lhs.true310.if.end320_crit_edge, label %if.then314

land.lhs.true310.if.end320_crit_edge:             ; preds = %land.lhs.true310
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end320

if.then314:                                       ; preds = %land.lhs.true310
  call void @__sanitizer_cov_trace_pc() #14
  %conv316 = zext i8 %335 to i32
  %shl317 = shl nuw nsw i32 %conv316, 17
  %340 = zext i32 %shl317 to i64
  %nr_parts.i765 = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 43
  %341 = ptrtoint ptr %nr_parts.i765 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %nr_parts.i765, align 8
  %arrayidx.i766 = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 42, i32 %342
  %343 = ptrtoint ptr %arrayidx.i766 to i32
  call void @__asan_store8_noabort(i32 %343)
  store i64 %340, ptr %arrayidx.i766, align 8
  %344 = load i32, ptr %nr_parts.i765, align 8
  %part_cfg5.i767 = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 42, i32 %344, i32 1
  %345 = ptrtoint ptr %part_cfg5.i767 to i32
  call void @__asan_store4_noabort(i32 %345)
  store i32 3, ptr %part_cfg5.i767, align 8
  %346 = load i32, ptr %nr_parts.i765, align 8
  %name9.i768 = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 42, i32 %346, i32 2
  %call.i769 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name9.i768, ptr noundef nonnull @.str.97, i32 noundef 0) #12
  %347 = ptrtoint ptr %nr_parts.i765 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %nr_parts.i765, align 8
  %force_ro.i770 = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 42, i32 %348, i32 3
  %349 = ptrtoint ptr %force_ro.i770 to i32
  call void @__asan_store1_noabort(i32 %349)
  store i8 0, ptr %force_ro.i770, align 8
  %350 = load i32, ptr %nr_parts.i765, align 8
  %area_type17.i771 = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 42, i32 %350, i32 4
  %351 = ptrtoint ptr %area_type17.i771 to i32
  call void @__asan_store4_noabort(i32 %351)
  store i32 8, ptr %area_type17.i771, align 4
  %inc.i772 = add i32 %350, 1
  store i32 %inc.i772, ptr %nr_parts.i765, align 8
  br label %if.end320

if.end320:                                        ; preds = %if.then314, %land.lhs.true310.if.end320_crit_edge, %if.end300.if.end320_crit_edge, %if.end193.if.end320_crit_edge, %if.end130.if.end320_crit_edge
  %arrayidx321 = getelementptr i8, ptr %ext_csd, i32 181
  %352 = ptrtoint ptr %arrayidx321 to i32
  call void @__asan_load1_noabort(i32 %352)
  %353 = load i8, ptr %arrayidx321, align 1
  %raw_erased_mem_count = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 47
  %354 = ptrtoint ptr %raw_erased_mem_count to i32
  call void @__asan_store1_noabort(i32 %354)
  store i8 %353, ptr %raw_erased_mem_count, align 1
  %355 = load i8, ptr %arrayidx321, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %355)
  %tobool324.not = icmp ne i8 %355, 0
  %spec.select790 = sext i1 %tobool324.not to i8
  %356 = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 14
  %357 = ptrtoint ptr %356 to i32
  call void @__asan_store1_noabort(i32 %357)
  store i8 %spec.select790, ptr %356, align 8
  %generic_cmd6_time = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 14
  %358 = ptrtoint ptr %generic_cmd6_time to i32
  call void @__asan_store4_noabort(i32 %358)
  store i32 500, ptr %generic_cmd6_time, align 4
  %359 = ptrtoint ptr %ext_csd1 to i32
  call void @__asan_load1_noabort(i32 %359)
  %360 = load i8, ptr %ext_csd1, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %360)
  %cmp333 = icmp ugt i8 %360, 5
  br i1 %cmp333, label %if.then335, label %if.else398

if.then335:                                       ; preds = %if.end320
  %feature_support = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 76
  %361 = ptrtoint ptr %feature_support to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %feature_support, align 4
  %or337 = or i32 %362, 1
  store i32 %or337, ptr %feature_support, align 4
  %arrayidx338 = getelementptr i8, ptr %ext_csd, i32 248
  %363 = ptrtoint ptr %arrayidx338 to i32
  call void @__asan_load1_noabort(i32 %363)
  %364 = load i8, ptr %arrayidx338, align 1
  %conv339 = zext i8 %364 to i32
  %mul340 = mul nuw nsw i32 %conv339, 10
  %365 = ptrtoint ptr %generic_cmd6_time to i32
  call void @__asan_store4_noabort(i32 %365)
  store i32 %mul340, ptr %generic_cmd6_time, align 4
  %arrayidx343 = getelementptr i8, ptr %ext_csd, i32 247
  %366 = ptrtoint ptr %arrayidx343 to i32
  call void @__asan_load1_noabort(i32 %366)
  %367 = load i8, ptr %arrayidx343, align 1
  %conv344 = zext i8 %367 to i32
  %mul345 = mul nuw nsw i32 %conv344, 10
  %power_off_longtime = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 15
  %368 = ptrtoint ptr %power_off_longtime to i32
  call void @__asan_store4_noabort(i32 %368)
  store i32 %mul345, ptr %power_off_longtime, align 8
  %arrayidx347 = getelementptr i8, ptr %ext_csd, i32 249
  %369 = ptrtoint ptr %arrayidx347 to i32
  call void @__asan_load1_noabort(i32 %369)
  %370 = load i8, ptr %arrayidx347, align 1
  %conv348 = zext i8 %370 to i32
  %arrayidx350 = getelementptr i8, ptr %ext_csd, i32 250
  %371 = ptrtoint ptr %arrayidx350 to i32
  call void @__asan_load1_noabort(i32 %371)
  %372 = load i8, ptr %arrayidx350, align 1
  %conv351 = zext i8 %372 to i32
  %shl352 = shl nuw nsw i32 %conv351, 8
  %or353 = or i32 %shl352, %conv348
  %arrayidx354 = getelementptr i8, ptr %ext_csd, i32 251
  %373 = ptrtoint ptr %arrayidx354 to i32
  call void @__asan_load1_noabort(i32 %373)
  %374 = load i8, ptr %arrayidx354, align 1
  %conv355 = zext i8 %374 to i32
  %shl356 = shl nuw nsw i32 %conv355, 16
  %or357 = or i32 %or353, %shl356
  %arrayidx358 = getelementptr i8, ptr %ext_csd, i32 252
  %375 = ptrtoint ptr %arrayidx358 to i32
  call void @__asan_load1_noabort(i32 %375)
  %376 = load i8, ptr %arrayidx358, align 1
  %conv359 = zext i8 %376 to i32
  %shl360 = shl nuw i32 %conv359, 24
  %or361 = or i32 %or357, %shl360
  %cache_size = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 28
  %377 = ptrtoint ptr %cache_size to i32
  call void @__asan_store4_noabort(i32 %377)
  store i32 %or361, ptr %cache_size, align 4
  %arrayidx363 = getelementptr i8, ptr %ext_csd, i32 61
  %378 = ptrtoint ptr %arrayidx363 to i32
  call void @__asan_load1_noabort(i32 %378)
  %379 = load i8, ptr %arrayidx363, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %379)
  %cmp365 = icmp eq i8 %379, 1
  %spec.select791 = select i1 %cmp365, i32 4096, i32 512
  %380 = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 35
  %381 = ptrtoint ptr %380 to i32
  call void @__asan_store4_noabort(i32 %381)
  store i32 %spec.select791, ptr %380, align 4
  %arrayidx373 = getelementptr i8, ptr %ext_csd, i32 499
  %382 = ptrtoint ptr %arrayidx373 to i32
  call void @__asan_load1_noabort(i32 %382)
  %383 = load i8, ptr %arrayidx373, align 1
  %384 = and i8 %383, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %384)
  %tobool376.not = icmp eq i8 %384, 0
  br i1 %tobool376.not, label %if.then335.if.end393_crit_edge, label %land.lhs.true377

if.then335.if.end393_crit_edge:                   ; preds = %if.then335
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end393

land.lhs.true377:                                 ; preds = %if.then335
  %arrayidx378 = getelementptr i8, ptr %ext_csd, i32 498
  %385 = ptrtoint ptr %arrayidx378 to i32
  call void @__asan_load1_noabort(i32 %385)
  %386 = load i8, ptr %arrayidx378, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %386)
  %cmp380 = icmp ult i8 %386, 9
  br i1 %cmp380, label %if.then382, label %land.lhs.true377.if.end393_crit_edge

land.lhs.true377.if.end393_crit_edge:             ; preds = %land.lhs.true377
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end393

if.then382:                                       ; preds = %land.lhs.true377
  call void @__sanitizer_cov_trace_pc() #14
  %conv379 = zext i8 %386 to i32
  %387 = ptrtoint ptr %380 to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %380, align 4
  %mul388 = shl i32 %388, %conv379
  br label %if.end393

if.end393:                                        ; preds = %if.then382, %land.lhs.true377.if.end393_crit_edge, %if.then335.if.end393_crit_edge
  %.sink = phi i32 [ %mul388, %if.then382 ], [ 0, %land.lhs.true377.if.end393_crit_edge ], [ 0, %if.then335.if.end393_crit_edge ]
  %data_tag_unit_size392 = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 36
  %389 = ptrtoint ptr %data_tag_unit_size392 to i32
  call void @__asan_store4_noabort(i32 %389)
  store i32 %.sink, ptr %data_tag_unit_size392, align 8
  %arrayidx394 = getelementptr i8, ptr %ext_csd, i32 500
  %390 = ptrtoint ptr %arrayidx394 to i32
  call void @__asan_load1_noabort(i32 %390)
  %391 = load i8, ptr %arrayidx394, align 1
  %max_packed_writes = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 9
  %392 = ptrtoint ptr %max_packed_writes to i32
  call void @__asan_store1_noabort(i32 %392)
  store i8 %391, ptr %max_packed_writes, align 1
  %arrayidx396 = getelementptr i8, ptr %ext_csd, i32 501
  %393 = ptrtoint ptr %arrayidx396 to i32
  call void @__asan_load1_noabort(i32 %393)
  %394 = load i8, ptr %arrayidx396, align 1
  %max_packed_reads = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 10
  %395 = ptrtoint ptr %max_packed_reads to i32
  call void @__asan_store1_noabort(i32 %395)
  store i8 %394, ptr %max_packed_reads, align 2
  br label %if.end401

if.else398:                                       ; preds = %if.end320
  call void @__sanitizer_cov_trace_pc() #14
  %data_sector_size400 = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 35
  %396 = ptrtoint ptr %data_sector_size400 to i32
  call void @__asan_store4_noabort(i32 %396)
  store i32 512, ptr %data_sector_size400, align 4
  br label %if.end401

if.end401:                                        ; preds = %if.else398, %if.end393
  %part_time403 = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 12
  %397 = ptrtoint ptr %part_time403 to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load i32, ptr %part_time403, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %398)
  %tobool404.not = icmp eq i32 %398, 0
  br i1 %tobool404.not, label %if.then405, label %if.end401.if.end410_crit_edge

if.end401.if.end410_crit_edge:                    ; preds = %if.end401
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end410

if.then405:                                       ; preds = %if.end401
  call void @__sanitizer_cov_trace_pc() #14
  %399 = ptrtoint ptr %generic_cmd6_time to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load i32, ptr %generic_cmd6_time, align 4
  %401 = ptrtoint ptr %part_time403 to i32
  call void @__asan_store4_noabort(i32 %401)
  store i32 %400, ptr %part_time403, align 4
  br label %if.end410

if.end410:                                        ; preds = %if.then405, %if.end401.if.end410_crit_edge
  %402 = phi i32 [ %400, %if.then405 ], [ %398, %if.end401.if.end410_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 300, i32 %402)
  %cmp413 = icmp ult i32 %402, 300
  br i1 %cmp413, label %if.then415, label %if.end410.if.end418_crit_edge

if.end410.if.end418_crit_edge:                    ; preds = %if.end410
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end418

if.then415:                                       ; preds = %if.end410
  call void @__sanitizer_cov_trace_pc() #14
  %403 = ptrtoint ptr %part_time403 to i32
  call void @__asan_store4_noabort(i32 %403)
  store i32 300, ptr %part_time403, align 4
  br label %if.end418

if.end418:                                        ; preds = %if.then415, %if.end410.if.end418_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %360)
  %cmp422 = icmp ugt i8 %360, 6
  br i1 %cmp422, label %if.then424, label %if.end418.out_crit_edge

if.end418.out_crit_edge:                          ; preds = %if.end418
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then424:                                       ; preds = %if.end418
  %fwrev = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 43
  %arrayidx426 = getelementptr i8, ptr %ext_csd, i32 254
  %404 = ptrtoint ptr %arrayidx426 to i32
  call void @__asan_loadN_noabort(i32 %404, i32 8)
  %405 = load i64, ptr %arrayidx426, align 1
  %406 = ptrtoint ptr %fwrev to i32
  call void @__asan_store8_noabort(i32 %406)
  store i64 %405, ptr %fwrev, align 8
  %arrayidx427 = getelementptr i8, ptr %ext_csd, i32 493
  %407 = ptrtoint ptr %arrayidx427 to i32
  call void @__asan_load1_noabort(i32 %407)
  %408 = load i8, ptr %arrayidx427, align 1
  %409 = and i8 %408, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %409)
  %tobool430.not = icmp eq i8 %409, 0
  br i1 %tobool430.not, label %if.then424.if.end445_crit_edge, label %land.rhs

if.then424.if.end445_crit_edge:                   ; preds = %if.then424
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end445

land.rhs:                                         ; preds = %if.then424
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx431 = getelementptr i8, ptr %ext_csd, i32 169
  %410 = ptrtoint ptr %arrayidx431 to i32
  call void @__asan_load1_noabort(i32 %410)
  %411 = load i8, ptr %arrayidx431, align 1
  %412 = and i8 %411, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %412)
  %tobool434.not = icmp eq i8 %412, 0
  br label %if.end445

if.end445:                                        ; preds = %land.rhs, %if.then424.if.end445_crit_edge
  %413 = phi i1 [ false, %if.then424.if.end445_crit_edge ], [ %tobool434.not, %land.rhs ]
  %ffu_capable = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 39
  %frombool438 = zext i1 %413 to i8
  %414 = ptrtoint ptr %ffu_capable to i32
  call void @__asan_store1_noabort(i32 %414)
  store i8 %frombool438, ptr %ffu_capable, align 1
  %arrayidx439 = getelementptr i8, ptr %ext_csd, i32 267
  %415 = ptrtoint ptr %arrayidx439 to i32
  call void @__asan_load1_noabort(i32 %415)
  %416 = load i8, ptr %arrayidx439, align 1
  %pre_eol_info = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 73
  %417 = ptrtoint ptr %pre_eol_info to i32
  call void @__asan_store1_noabort(i32 %417)
  store i8 %416, ptr %pre_eol_info, align 8
  %arrayidx441 = getelementptr i8, ptr %ext_csd, i32 268
  %418 = ptrtoint ptr %arrayidx441 to i32
  call void @__asan_load1_noabort(i32 %418)
  %419 = load i8, ptr %arrayidx441, align 1
  %device_life_time_est_typ_a = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 74
  %420 = ptrtoint ptr %device_life_time_est_typ_a to i32
  call void @__asan_store1_noabort(i32 %420)
  store i8 %419, ptr %device_life_time_est_typ_a, align 1
  %arrayidx443 = getelementptr i8, ptr %ext_csd, i32 269
  %421 = ptrtoint ptr %arrayidx443 to i32
  call void @__asan_load1_noabort(i32 %421)
  %422 = load i8, ptr %arrayidx443, align 1
  %device_life_time_est_typ_b = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 75
  %423 = ptrtoint ptr %device_life_time_est_typ_b to i32
  call void @__asan_store1_noabort(i32 %423)
  store i8 %422, ptr %device_life_time_est_typ_b, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %360)
  %cmp449 = icmp ugt i8 %360, 7
  br i1 %cmp449, label %if.then451, label %if.end445.out_crit_edge

if.end445.out_crit_edge:                          ; preds = %if.end445
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then451:                                       ; preds = %if.end445
  %arrayidx452 = getelementptr i8, ptr %ext_csd, i32 308
  %424 = ptrtoint ptr %arrayidx452 to i32
  call void @__asan_load1_noabort(i32 %424)
  %425 = load i8, ptr %arrayidx452, align 1
  %426 = and i8 %425, 1
  %cmdq_support = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 41
  %427 = ptrtoint ptr %cmdq_support to i32
  call void @__asan_store1_noabort(i32 %427)
  store i8 %426, ptr %cmdq_support, align 1
  %arrayidx458 = getelementptr i8, ptr %ext_csd, i32 307
  %428 = ptrtoint ptr %arrayidx458 to i32
  call void @__asan_load1_noabort(i32 %428)
  %429 = load i8, ptr %arrayidx458, align 1
  %430 = and i8 %429, 31
  %narrow = add nuw nsw i8 %430, 1
  %add461 = zext i8 %narrow to i32
  %cmdq_depth = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 42
  %431 = ptrtoint ptr %cmdq_depth to i32
  call void @__asan_store4_noabort(i32 %431)
  store i32 %add461, ptr %cmdq_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %430)
  %cmp465 = icmp ult i8 %430, 2
  br i1 %cmp465, label %if.end472.thread, label %if.end472

if.end472.thread:                                 ; preds = %if.then451
  call void @__sanitizer_cov_trace_pc() #14
  %432 = ptrtoint ptr %cmdq_support to i32
  call void @__asan_store1_noabort(i32 %432)
  store i8 0, ptr %cmdq_support, align 1
  %433 = ptrtoint ptr %cmdq_depth to i32
  call void @__asan_store4_noabort(i32 %433)
  store i32 0, ptr %cmdq_depth, align 4
  br label %if.end498

if.end472:                                        ; preds = %if.then451
  %434 = ptrtoint ptr %cmdq_support to i32
  call void @__asan_load1_noabort(i32 %434)
  %.pr782 = load i8, ptr %cmdq_support, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr782)
  %tobool475.not = icmp eq i8 %.pr782, 0
  br i1 %tobool475.not, label %if.end472.if.end498_crit_edge, label %do.body477

if.end472.if.end498_crit_edge:                    ; preds = %if.end472
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end498

do.body477:                                       ; preds = %if.end472
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_decode_ext_csd.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_decode_ext_csd, %if.then489)) #12
          to label %if.end498 [label %if.then489], !srcloc !309

if.then489:                                       ; preds = %do.body477
  %435 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %card, align 8
  %init_name.i773 = getelementptr inbounds %struct.mmc_host, ptr %436, i32 0, i32 1, i32 3
  %437 = ptrtoint ptr %init_name.i773 to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %init_name.i773, align 8
  %tobool.not.i774 = icmp eq ptr %438, null
  br i1 %tobool.not.i774, label %if.end.i775, label %if.then489.dev_name.exit777_crit_edge

if.then489.dev_name.exit777_crit_edge:            ; preds = %if.then489
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit777

if.end.i775:                                      ; preds = %if.then489
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev491 = getelementptr inbounds %struct.mmc_host, ptr %436, i32 0, i32 1
  %439 = ptrtoint ptr %class_dev491 to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %class_dev491, align 4
  br label %dev_name.exit777

dev_name.exit777:                                 ; preds = %if.end.i775, %if.then489.dev_name.exit777_crit_edge
  %retval.0.i776 = phi ptr [ %440, %if.end.i775 ], [ %438, %if.then489.dev_name.exit777_crit_edge ]
  %441 = ptrtoint ptr %cmdq_depth to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load i32, ptr %cmdq_depth, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mmc_decode_ext_csd.__UNIQUE_ID_ddebug271, ptr noundef nonnull @.str.98, ptr noundef %retval.0.i776, i32 noundef %442) #12
  br label %if.end498

if.end498:                                        ; preds = %dev_name.exit777, %do.body477, %if.end472.if.end498_crit_edge, %if.end472.thread
  %rel_param500 = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 4
  %443 = ptrtoint ptr %rel_param500 to i32
  call void @__asan_load1_noabort(i32 %443)
  %444 = load i8, ptr %rel_param500, align 4
  %enhanced_rpmb_supported = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 5
  %445 = lshr i8 %444, 4
  %.lobit = and i8 %445, 1
  %446 = ptrtoint ptr %enhanced_rpmb_supported to i32
  call void @__asan_store1_noabort(i32 %446)
  store i8 %.lobit, ptr %enhanced_rpmb_supported, align 1
  br label %out

out:                                              ; preds = %if.end498, %if.end445.out_crit_edge, %if.end418.out_crit_edge, %dev_name.exit
  %err.0 = phi i32 [ -22, %dev_name.exit ], [ 0, %if.end498 ], [ 0, %if.end445.out_crit_edge ], [ 0, %if.end418.out_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmc_of_find_child_device(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mmc_fixup_device(ptr noundef %card) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %cid = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 19
  %hwrev = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 19, i32 6
  %0 = ptrtoint ptr %hwrev to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hwrev, align 4
  %conv = zext i8 %1 to i64
  %shl = shl nuw nsw i64 %conv, 40
  %fwrev = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 19, i32 7
  %2 = ptrtoint ptr %fwrev to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fwrev, align 1
  %conv2 = zext i8 %3 to i64
  %shl3 = shl nuw nsw i64 %conv2, 32
  %or = or i64 %shl3, %shl
  %year = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 19, i32 5
  %4 = ptrtoint ptr %year to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %year, align 2
  %conv5 = zext i16 %5 to i64
  %shl6 = shl nuw nsw i64 %conv5, 16
  %or7 = or i64 %or, %shl6
  %month = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 19, i32 8
  %6 = ptrtoint ptr %month to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %month, align 2
  %conv9 = zext i8 %7 to i64
  %or10 = or i64 %or7, %conv9
  %oemid24 = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 19, i32 4
  %prod_name = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 19, i32 1
  %cis = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 30
  %device = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 30, i32 1
  %ext_csd = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21
  %dev = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %vendor_fixup7 = phi ptr [ getelementptr inbounds ([3 x %struct.mmc_fixup], ptr @mmc_ext_csd_fixups, i32 0, i32 0, i32 9), %entry ], [ %vendor_fixup, %for.inc.for.body_crit_edge ]
  %f.05 = phi ptr [ @mmc_ext_csd_fixups, %entry ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %manfid = getelementptr inbounds %struct.mmc_fixup, ptr %f.05, i32 0, i32 3
  %8 = ptrtoint ptr %manfid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %manfid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp.not = icmp eq i32 %9, -1
  br i1 %cmp.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %10 = ptrtoint ptr %cid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp15.not = icmp eq i32 %9, %11
  br i1 %cmp15.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %oemid = getelementptr inbounds %struct.mmc_fixup, ptr %f.05, i32 0, i32 4
  %12 = ptrtoint ptr %oemid to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %oemid, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %13)
  %cmp18.not = icmp eq i16 %13, -1
  br i1 %cmp18.not, label %if.end.if.end29_crit_edge, label %land.lhs.true20

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

land.lhs.true20:                                  ; preds = %if.end
  %14 = ptrtoint ptr %oemid24 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %oemid24, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %15)
  %cmp26.not = icmp eq i16 %13, %15
  br i1 %cmp26.not, label %land.lhs.true20.if.end29_crit_edge, label %land.lhs.true20.for.inc_crit_edge

land.lhs.true20.for.inc_crit_edge:                ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true20.if.end29_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.end29:                                         ; preds = %land.lhs.true20.if.end29_crit_edge, %if.end.if.end29_crit_edge
  %16 = ptrtoint ptr %f.05 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %f.05, align 8
  %cmp30.not = icmp eq ptr %17, null
  br i1 %cmp30.not, label %if.end29.if.end37_crit_edge, label %land.lhs.true32

if.end29.if.end37_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

land.lhs.true32:                                  ; preds = %if.end29
  %call = tail call i32 @strncmp(ptr noundef nonnull %17, ptr noundef %prod_name, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool35.not = icmp eq i32 %call, 0
  br i1 %tobool35.not, label %land.lhs.true32.if.end37_crit_edge, label %land.lhs.true32.for.inc_crit_edge

land.lhs.true32.for.inc_crit_edge:                ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true32.if.end37_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.end37:                                         ; preds = %land.lhs.true32.if.end37_crit_edge, %if.end29.if.end37_crit_edge
  %cis_vendor = getelementptr inbounds %struct.mmc_fixup, ptr %f.05, i32 0, i32 5
  %18 = ptrtoint ptr %cis_vendor to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %cis_vendor, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %19)
  %cmp39.not = icmp eq i16 %19, -1
  br i1 %cmp39.not, label %if.end37.if.end48_crit_edge, label %land.lhs.true41

if.end37.if.end48_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48

land.lhs.true41:                                  ; preds = %if.end37
  %20 = ptrtoint ptr %cis to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %cis, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %19, i16 %21)
  %cmp45.not = icmp eq i16 %19, %21
  br i1 %cmp45.not, label %land.lhs.true41.if.end48_crit_edge, label %land.lhs.true41.for.inc_crit_edge

land.lhs.true41.for.inc_crit_edge:                ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true41.if.end48_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48

if.end48:                                         ; preds = %land.lhs.true41.if.end48_crit_edge, %if.end37.if.end48_crit_edge
  %cis_device = getelementptr inbounds %struct.mmc_fixup, ptr %f.05, i32 0, i32 6
  %22 = ptrtoint ptr %cis_device to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %cis_device, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %23)
  %cmp50.not = icmp eq i16 %23, -1
  br i1 %cmp50.not, label %if.end48.if.end60_crit_edge, label %land.lhs.true52

if.end48.if.end60_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60

land.lhs.true52:                                  ; preds = %if.end48
  %24 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %25)
  %cmp57.not = icmp eq i16 %23, %25
  br i1 %cmp57.not, label %land.lhs.true52.if.end60_crit_edge, label %land.lhs.true52.for.inc_crit_edge

land.lhs.true52.for.inc_crit_edge:                ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true52.if.end60_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60

if.end60:                                         ; preds = %land.lhs.true52.if.end60_crit_edge, %if.end48.if.end60_crit_edge
  %ext_csd_rev = getelementptr inbounds %struct.mmc_fixup, ptr %f.05, i32 0, i32 7
  %26 = ptrtoint ptr %ext_csd_rev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ext_csd_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %cmp61.not = icmp eq i32 %27, -1
  br i1 %cmp61.not, label %if.end60.if.end70_crit_edge, label %land.lhs.true63

if.end60.if.end70_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

land.lhs.true63:                                  ; preds = %if.end60
  %28 = ptrtoint ptr %ext_csd to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ext_csd, align 8
  %conv66 = zext i8 %29 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %conv66)
  %cmp67.not = icmp eq i32 %27, %conv66
  br i1 %cmp67.not, label %land.lhs.true63.if.end70_crit_edge, label %land.lhs.true63.for.inc_crit_edge

land.lhs.true63.for.inc_crit_edge:                ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true63.if.end70_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

if.end70:                                         ; preds = %land.lhs.true63.if.end70_crit_edge, %if.end60.if.end70_crit_edge
  %rev_start = getelementptr inbounds %struct.mmc_fixup, ptr %f.05, i32 0, i32 1
  %30 = ptrtoint ptr %rev_start to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %rev_start, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %or10, i64 %31)
  %cmp71 = icmp ult i64 %or10, %31
  br i1 %cmp71, label %if.end70.for.inc_crit_edge, label %lor.lhs.false

if.end70.for.inc_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

lor.lhs.false:                                    ; preds = %if.end70
  %rev_end = getelementptr inbounds %struct.mmc_fixup, ptr %f.05, i32 0, i32 2
  %32 = ptrtoint ptr %rev_end to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %rev_end, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %or10, i64 %33)
  %cmp73 = icmp ugt i64 %or10, %33
  br i1 %cmp73, label %lor.lhs.false.for.inc_crit_edge, label %if.end76

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end76:                                         ; preds = %lor.lhs.false
  %of_compatible = getelementptr inbounds %struct.mmc_fixup, ptr %f.05, i32 0, i32 8
  %34 = ptrtoint ptr %of_compatible to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %of_compatible, align 8
  %tobool77.not = icmp eq ptr %35, null
  br i1 %tobool77.not, label %if.end76.do.body_crit_edge, label %land.lhs.true78

if.end76.do.body_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

land.lhs.true78:                                  ; preds = %if.end76
  %36 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %card, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 128
  %of_node.i = getelementptr inbounds %struct.device, ptr %39, i32 0, i32 27
  %40 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %of_node.i, align 8
  %call.i = tail call ptr @of_get_next_child(ptr noundef %41, ptr noundef null) #12
  %cmp.not9.i = icmp eq ptr %call.i, null
  br i1 %cmp.not9.i, label %land.lhs.true78.for.inc_crit_edge, label %land.lhs.true78.for.body.i_crit_edge

land.lhs.true78.for.body.i_crit_edge:             ; preds = %land.lhs.true78
  br label %for.body.i

land.lhs.true78.for.inc_crit_edge:                ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %land.lhs.true78.for.body.i_crit_edge
  %np.010.i = phi ptr [ %call5.i, %for.inc.i.for.body.i_crit_edge ], [ %call.i, %land.lhs.true78.for.body.i_crit_edge ]
  %call1.i = tail call i32 @of_device_is_compatible(ptr noundef nonnull %np.010.i, ptr noundef nonnull %35) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %for.inc.i, label %for.body.i.do.body_crit_edge

for.body.i.do.body_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

for.inc.i:                                        ; preds = %for.body.i
  %42 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %card, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 128
  %of_node4.i = getelementptr inbounds %struct.device, ptr %45, i32 0, i32 27
  %46 = ptrtoint ptr %of_node4.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %of_node4.i, align 8
  %call5.i = tail call ptr @of_get_next_child(ptr noundef %47, ptr noundef nonnull %np.010.i) #12
  %cmp.not.i = icmp eq ptr %call5.i, null
  br i1 %cmp.not.i, label %for.inc.i.for.inc_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.for.inc_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

do.body:                                          ; preds = %for.body.i.do.body_crit_edge, %if.end76.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_fixup_device.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_fixup_device, %if.then87)) #12
          to label %do.end [label %if.then87], !srcloc !309

if.then87:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %vendor_fixup7 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %vendor_fixup7, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mmc_fixup_device.__UNIQUE_ID_ddebug268, ptr noundef %dev, ptr noundef nonnull @.str.101, ptr noundef %49) #12
  br label %do.end

do.end:                                           ; preds = %if.then87, %do.body
  %50 = ptrtoint ptr %vendor_fixup7 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %vendor_fixup7, align 4
  %data = getelementptr inbounds %struct.mmc_fixup, ptr %f.05, i32 0, i32 10
  %52 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %data, align 8
  tail call void %51(ptr noundef %card, i32 noundef %53) #12
  br label %for.inc

for.inc:                                          ; preds = %do.end, %for.inc.i.for.inc_crit_edge, %land.lhs.true78.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %if.end70.for.inc_crit_edge, %land.lhs.true63.for.inc_crit_edge, %land.lhs.true52.for.inc_crit_edge, %land.lhs.true41.for.inc_crit_edge, %land.lhs.true32.for.inc_crit_edge, %land.lhs.true20.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.mmc_fixup, ptr %f.05, i32 1
  %vendor_fixup = getelementptr %struct.mmc_fixup, ptr %f.05, i32 1, i32 9
  %54 = ptrtoint ptr %vendor_fixup to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %vendor_fixup, align 4
  %tobool.not = icmp eq ptr %55, null
  br i1 %tobool.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @add_quirk(ptr nocapture noundef %card, i32 noundef %data) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %quirks = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 6
  %0 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %quirks, align 8
  %or = or i32 %1, %data
  store i32 %or, ptr %quirks, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_init_erase(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_set_signal_voltage(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_select_drive_strength(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_set_driver_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_execute_tuning(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_set_bus_width(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_bus_test(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mmc_claim_host(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 175)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 175)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !29, !31, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !82, !83, !85, !87, !88, !89, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !105, !106, !108, !110, !112, !113, !114, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !150, !151, !153, !154, !156, !157, !158, !160, !161, !163, !164, !166, !167, !169, !170, !172, !173, !175, !176, !178, !179, !180, !181, !183, !185, !187, !189, !191, !192, !193, !194, !196, !197, !198, !199, !201, !202, !203, !205, !206, !207, !208, !210, !212, !214, !216, !217, !219, !220, !222, !224, !225, !227, !228, !229, !230, !232, !234, !235, !236, !237, !239, !240, !241, !242, !244, !246, !247, !248, !249, !251, !252, !253, !255, !256, !257, !259, !260, !261, !263, !264, !266, !267, !268, !270, !271, !272, !273, !275, !277, !279, !280, !281, !282, !284, !285, !286, !287, !289, !290, !291, !292, !294, !295, !296}
!llvm.module.flags = !{!297, !298, !299, !300, !301, !302, !303, !304}
!llvm.ident = !{!305}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mmc/core/mmc.c", i32 1325, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @mmc_hs400_to_hs200._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @mmc_hs400_to_hs200._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/mmc/core/mmc.c", i32 2315, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @mmc_attach_mmc._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @mmc_attach_mmc._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/mmc/core/mmc.c", i32 1176, i32 3}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @mmc_select_hs400._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @mmc_select_hs400._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mmc/core/mmc.c", i32 1205, i32 3}
!18 = !{ptr @mmc_select_hs400._entry.7, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @mmc_select_hs400._entry_ptr.9, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mmc/core/mmc.c", i32 1218, i32 3}
!22 = !{ptr @mmc_select_hs400._entry.10, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @mmc_select_hs400._entry_ptr.12, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @mmc_select_hs400._entry.13, !25, !"_entry", i1 false, i1 false}
!25 = !{!"../drivers/mmc/core/mmc.c", i32 1245, i32 2}
!26 = !{ptr @mmc_select_hs400._entry_ptr.14, !25, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @mmc_ops, !28, !"mmc_ops", i1 false, i1 false}
!28 = !{!"../drivers/mmc/core/mmc.c", i32 2238, i32 33}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/mmc/core/mmc.c", i32 1992, i32 3}
!31 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @mmc_poweroff_notify._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @mmc_poweroff_notify._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mmc/core/mmc.c", i32 2182, i32 3}
!36 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @mmc_runtime_suspend._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @mmc_runtime_suspend._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mmc/core/mmc.c", i32 2197, i32 3}
!41 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @mmc_runtime_resume._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @mmc_runtime_resume._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mmc/core/mmc.c", i32 2062, i32 4}
!46 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @_mmc_flush_cache._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @_mmc_flush_cache._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/mmc/core/mmc.c", i32 1617, i32 4}
!51 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @mmc_init_card.__UNIQUE_ID_ddebug272, !50, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/mmc/core/mmc.c", i32 1819, i32 4}
!56 = !{ptr @mmc_init_card._entry, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @mmc_init_card._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/mmc/core/mmc.c", i32 1847, i32 4}
!60 = !{ptr @mmc_init_card._entry.27, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @mmc_init_card._entry_ptr.29, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/mmc/core/mmc.c", i32 1865, i32 4}
!64 = !{ptr @mmc_init_card._entry.30, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @mmc_init_card._entry_ptr.32, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/mmc/core/mmc.c", i32 1884, i32 5}
!68 = !{ptr @mmc_init_card._entry.33, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @mmc_init_card._entry_ptr.35, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/mmc/core/mmc.c", i32 1888, i32 5}
!72 = !{ptr @mmc_init_card._entry.36, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @mmc_init_card._entry_ptr.38, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.40, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/mmc/core/mmc.c", i32 1896, i32 3}
!76 = !{ptr @mmc_init_card._entry.39, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @mmc_init_card._entry_ptr.41, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @mmc_type, !79, !"mmc_type", i1 false, i1 false}
!79 = !{!"../drivers/mmc/core/mmc.c", i32 871, i32 27}
!80 = !{ptr @mmc_std_groups, !81, !"mmc_std_groups", i1 false, i1 false}
!81 = !{!"../drivers/mmc/core/mmc.c", i32 869, i32 1}
!82 = !{ptr @mmc_std_group, !81, !"mmc_std_group", i1 false, i1 false}
!83 = !{ptr @mmc_std_attrs, !84, !"mmc_std_attrs", i1 false, i1 false}
!84 = !{!"../drivers/mmc/core/mmc.c", i32 841, i32 26}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/mmc/core/mmc.c", i32 779, i32 1}
!87 = !{ptr @dev_attr_cid, !86, !"dev_attr_cid", i1 false, i1 false}
!88 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/mmc/core/mmc.c", i32 781, i32 1}
!91 = !{ptr @dev_attr_csd, !90, !"dev_attr_csd", i1 false, i1 false}
!92 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/mmc/core/mmc.c", i32 783, i32 1}
!94 = !{ptr @dev_attr_date, !93, !"dev_attr_date", i1 false, i1 false}
!95 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/mmc/core/mmc.c", i32 784, i32 1}
!98 = !{ptr @dev_attr_erase_size, !97, !"dev_attr_erase_size", i1 false, i1 false}
!99 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/mmc/core/mmc.c", i32 785, i32 1}
!102 = !{ptr @dev_attr_preferred_erase_size, !101, !"dev_attr_preferred_erase_size", i1 false, i1 false}
!103 = !{ptr @.str.50, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/mmc/core/mmc.c", i32 823, i32 8}
!105 = !{ptr @dev_attr_fwrev, !104, !"dev_attr_fwrev", i1 false, i1 false}
!106 = !{ptr @.str.51, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/mmc/core/mmc.c", i32 816, i32 23}
!108 = !{ptr @.str.52, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/mmc/core/mmc.c", i32 818, i32 23}
!110 = !{ptr @.str.53, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/mmc/core/mmc.c", i32 786, i32 1}
!112 = !{ptr @dev_attr_ffu_capable, !111, !"dev_attr_ffu_capable", i1 false, i1 false}
!113 = !{ptr @.str.54, !111, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.55, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/mmc/core/mmc.c", i32 787, i32 1}
!116 = !{ptr @dev_attr_hwrev, !115, !"dev_attr_hwrev", i1 false, i1 false}
!117 = !{ptr @.str.56, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/mmc/core/mmc.c", i32 788, i32 1}
!119 = !{ptr @dev_attr_manfid, !118, !"dev_attr_manfid", i1 false, i1 false}
!120 = !{ptr @.str.57, !118, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.58, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/mmc/core/mmc.c", i32 789, i32 1}
!123 = !{ptr @dev_attr_name, !122, !"dev_attr_name", i1 false, i1 false}
!124 = !{ptr @.str.59, !122, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.60, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/mmc/core/mmc.c", i32 790, i32 1}
!127 = !{ptr @dev_attr_oemid, !126, !"dev_attr_oemid", i1 false, i1 false}
!128 = !{ptr @.str.61, !126, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.62, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/mmc/core/mmc.c", i32 791, i32 1}
!131 = !{ptr @dev_attr_prv, !130, !"dev_attr_prv", i1 false, i1 false}
!132 = !{ptr @.str.63, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/mmc/core/mmc.c", i32 792, i32 1}
!134 = !{ptr @dev_attr_rev, !133, !"dev_attr_rev", i1 false, i1 false}
!135 = !{ptr @.str.64, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/mmc/core/mmc.c", i32 793, i32 1}
!137 = !{ptr @dev_attr_pre_eol_info, !136, !"dev_attr_pre_eol_info", i1 false, i1 false}
!138 = !{ptr @.str.65, !136, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.66, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/mmc/core/mmc.c", i32 794, i32 1}
!141 = !{ptr @dev_attr_life_time, !140, !"dev_attr_life_time", i1 false, i1 false}
!142 = !{ptr @.str.67, !140, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.68, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/mmc/core/mmc.c", i32 797, i32 1}
!145 = !{ptr @dev_attr_serial, !144, !"dev_attr_serial", i1 false, i1 false}
!146 = !{ptr @.str.69, !144, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.70, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/mmc/core/mmc.c", i32 798, i32 1}
!149 = !{ptr @dev_attr_enhanced_area_offset, !148, !"dev_attr_enhanced_area_offset", i1 false, i1 false}
!150 = !{ptr @.str.71, !148, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @.str.72, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/mmc/core/mmc.c", i32 800, i32 1}
!153 = !{ptr @dev_attr_enhanced_area_size, !152, !"dev_attr_enhanced_area_size", i1 false, i1 false}
!154 = !{ptr @.str.73, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/mmc/core/mmc.c", i32 801, i32 1}
!156 = !{ptr @dev_attr_raw_rpmb_size_mult, !155, !"dev_attr_raw_rpmb_size_mult", i1 false, i1 false}
!157 = !{ptr @.str.74, !155, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.75, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/mmc/core/mmc.c", i32 802, i32 1}
!160 = !{ptr @dev_attr_enhanced_rpmb_supported, !159, !"dev_attr_enhanced_rpmb_supported", i1 false, i1 false}
!161 = !{ptr @.str.76, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/mmc/core/mmc.c", i32 804, i32 1}
!163 = !{ptr @dev_attr_rel_sectors, !162, !"dev_attr_rel_sectors", i1 false, i1 false}
!164 = !{ptr @.str.77, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/mmc/core/mmc.c", i32 805, i32 1}
!166 = !{ptr @dev_attr_ocr, !165, !"dev_attr_ocr", i1 false, i1 false}
!167 = !{ptr @.str.78, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/mmc/core/mmc.c", i32 806, i32 1}
!169 = !{ptr @dev_attr_rca, !168, !"dev_attr_rca", i1 false, i1 false}
!170 = !{ptr @.str.79, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/mmc/core/mmc.c", i32 839, i32 8}
!172 = !{ptr @dev_attr_dsr, !171, !"dev_attr_dsr", i1 false, i1 false}
!173 = !{ptr @.str.80, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/mmc/core/mmc.c", i32 807, i32 1}
!175 = !{ptr @dev_attr_cmdq_en, !174, !"dev_attr_cmdq_en", i1 false, i1 false}
!176 = !{ptr @.str.81, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/mmc/core/mmc.c", i32 147, i32 3}
!178 = !{ptr @.str.82, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @mmc_decode_csd._entry, !177, !"_entry", i1 false, i1 false}
!180 = !{ptr @mmc_decode_csd._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @taac_exp, !182, !"taac_exp", i1 false, i1 false}
!182 = !{!"../drivers/mmc/core/mmc.c", i32 43, i32 27}
!183 = !{ptr @taac_mant, !184, !"taac_mant", i1 false, i1 false}
!184 = !{!"../drivers/mmc/core/mmc.c", i32 47, i32 27}
!185 = !{ptr @tran_exp, !186, !"tran_exp", i1 false, i1 false}
!186 = !{!"../drivers/mmc/core/mmc.c", i32 33, i32 27}
!187 = !{ptr @tran_mant, !188, !"tran_mant", i1 false, i1 false}
!188 = !{!"../drivers/mmc/core/mmc.c", i32 38, i32 28}
!189 = !{ptr @.str.83, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/mmc/core/mmc.c", i32 113, i32 3}
!191 = !{ptr @.str.84, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @mmc_decode_cid._entry, !190, !"_entry", i1 false, i1 false}
!193 = !{ptr @mmc_decode_cid._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.85, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/mmc/core/mmc.c", i32 690, i32 4}
!196 = !{ptr @.str.86, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @mmc_read_ext_csd._entry, !195, !"_entry", i1 false, i1 false}
!198 = !{ptr @mmc_read_ext_csd._entry_ptr, !195, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.88, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/mmc/core/mmc.c", i32 693, i32 4}
!201 = !{ptr @mmc_read_ext_csd._entry.87, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @mmc_read_ext_csd._entry_ptr.89, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.90, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/mmc/core/mmc.c", i32 373, i32 4}
!205 = !{ptr @.str.91, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @mmc_decode_ext_csd._entry, !204, !"_entry", i1 false, i1 false}
!207 = !{ptr @mmc_decode_ext_csd._entry_ptr, !204, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.92, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/mmc/core/mmc.c", i32 382, i32 40}
!210 = !{ptr @.str.93, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/mmc/core/mmc.c", i32 383, i32 42}
!212 = !{ptr @.str.94, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/mmc/core/mmc.c", i32 452, i32 6}
!214 = !{ptr @.str.95, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/mmc/core/mmc.c", i32 533, i32 5}
!216 = !{ptr @mmc_decode_ext_csd.__UNIQUE_ID_ddebug269, !215, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!217 = !{ptr @.str.96, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/mmc/core/mmc.c", i32 539, i32 5}
!219 = !{ptr @mmc_decode_ext_csd.__UNIQUE_ID_ddebug270, !218, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!220 = !{ptr @.str.97, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/mmc/core/mmc.c", i32 569, i32 5}
!222 = !{ptr @.str.98, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/mmc/core/mmc.c", i32 656, i32 4}
!224 = !{ptr @mmc_decode_ext_csd.__UNIQUE_ID_ddebug271, !223, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!225 = !{ptr @.str.99, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/mmc/core/quirks.h", i32 200, i32 3}
!227 = !{ptr @.str.100, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @.str.101, !226, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @mmc_fixup_device.__UNIQUE_ID_ddebug268, !226, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!230 = !{ptr @mmc_ext_csd_fixups, !231, !"mmc_ext_csd_fixups", i1 false, i1 false}
!231 = !{!"../drivers/mmc/core/quirks.h", i32 106, i32 46}
!232 = !{ptr @.str.102, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/mmc/core/mmc.c", i32 295, i32 4}
!234 = !{ptr @.str.103, !233, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @mmc_manage_enhanced_area._entry, !233, !"_entry", i1 false, i1 false}
!236 = !{ptr @mmc_manage_enhanced_area._entry_ptr, !233, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.104, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/mmc/core/mmc.c", i32 337, i32 5}
!239 = !{ptr @.str.105, !238, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @mmc_manage_gp_partitions._entry, !238, !"_entry", i1 false, i1 false}
!241 = !{ptr @mmc_manage_gp_partitions._entry_ptr, !238, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.106, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/mmc/core/mmc.c", i32 350, i32 5}
!244 = !{ptr @.str.107, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/mmc/core/mmc.c", i32 1375, i32 3}
!246 = !{ptr @.str.108, !245, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @mmc_select_hs400es._entry, !245, !"_entry", i1 false, i1 false}
!248 = !{ptr @mmc_select_hs400es._entry_ptr, !245, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.110, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/mmc/core/mmc.c", i32 1387, i32 3}
!251 = !{ptr @mmc_select_hs400es._entry.109, !250, !"_entry", i1 false, i1 false}
!252 = !{ptr @mmc_select_hs400es._entry_ptr.111, !250, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.113, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/mmc/core/mmc.c", i32 1406, i32 3}
!255 = !{ptr @mmc_select_hs400es._entry.112, !254, !"_entry", i1 false, i1 false}
!256 = !{ptr @mmc_select_hs400es._entry_ptr.114, !254, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.116, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/mmc/core/mmc.c", i32 1421, i32 3}
!259 = !{ptr @mmc_select_hs400es._entry.115, !258, !"_entry", i1 false, i1 false}
!260 = !{ptr @mmc_select_hs400es._entry_ptr.117, !258, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @mmc_select_hs400es._entry.118, !262, !"_entry", i1 false, i1 false}
!262 = !{!"../drivers/mmc/core/mmc.c", i32 1441, i32 2}
!263 = !{ptr @mmc_select_hs400es._entry_ptr.119, !262, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @.str.120, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/mmc/core/mmc.c", i32 1510, i32 3}
!266 = !{ptr @mmc_select_hs200._entry, !265, !"_entry", i1 false, i1 false}
!267 = !{ptr @mmc_select_hs200._entry_ptr, !265, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.121, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/mmc/core/mmc.c", i32 1076, i32 3}
!270 = !{ptr @.str.122, !269, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @mmc_select_hs._entry, !269, !"_entry", i1 false, i1 false}
!272 = !{ptr @mmc_select_hs._entry_ptr, !269, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @mmc_select_bus_width.ext_csd_bits, !274, !"ext_csd_bits", i1 false, i1 false}
!274 = !{!"../drivers/mmc/core/mmc.c", i32 1000, i32 18}
!275 = !{ptr @mmc_select_bus_width.bus_widths, !276, !"bus_widths", i1 false, i1 false}
!276 = !{!"../drivers/mmc/core/mmc.c", i32 1004, i32 18}
!277 = !{ptr @.str.123, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/mmc/core/mmc.c", i32 1056, i32 4}
!279 = !{ptr @.str.124, !278, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @mmc_select_bus_width._entry, !278, !"_entry", i1 false, i1 false}
!281 = !{ptr @mmc_select_bus_width._entry_ptr, !278, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @.str.125, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/mmc/core/mmc.c", i32 1108, i32 3}
!284 = !{ptr @.str.126, !283, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @mmc_select_hs_ddr._entry, !283, !"_entry", i1 false, i1 false}
!286 = !{ptr @mmc_select_hs_ddr._entry_ptr, !283, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @.str.127, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/mmc/core/mmc.c", i32 969, i32 3}
!289 = !{ptr @.str.128, !288, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @mmc_select_powerclass._entry, !288, !"_entry", i1 false, i1 false}
!291 = !{ptr @mmc_select_powerclass._entry_ptr, !288, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @.str.129, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/mmc/core/mmc.c", i32 921, i32 3}
!294 = !{ptr @.str.130, !293, !"<string literal>", i1 false, i1 false}
!295 = !{ptr @__mmc_select_powerclass._entry, !293, !"_entry", i1 false, i1 false}
!296 = !{ptr @__mmc_select_powerclass._entry_ptr, !293, !"_entry_ptr", i1 false, i1 false}
!297 = !{i32 1, !"wchar_size", i32 2}
!298 = !{i32 1, !"min_enum_size", i32 4}
!299 = !{i32 8, !"branch-target-enforcement", i32 0}
!300 = !{i32 8, !"sign-return-address", i32 0}
!301 = !{i32 8, !"sign-return-address-all", i32 0}
!302 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!303 = !{i32 7, !"uwtable", i32 1}
!304 = !{i32 7, !"frame-pointer", i32 2}
!305 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!306 = !{!"auto-init"}
!307 = !{!"branch_weights", i32 1, i32 2000}
!308 = !{i8 0, i8 2}
!309 = !{i64 2148918145, i64 2148918150, i64 2148918163, i64 2148918207, i64 2148918241, i64 2148918262}
